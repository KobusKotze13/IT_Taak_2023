unit Signup_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls ;

type
  TfrmSignup = class(TForm)
    gplSignup: TGridPanel;
    edtNewStaffPassword: TEdit;
    edtNewStaffName: TEdit;
    lblSignup: TLabel;
    pnlSignupbtn: TPanel;
    edtNewStaffNUmber: TEdit;
    edtNewStaffEmail: TEdit;
    lblNewStaffEmail: TLabel;
    lblNewStaffNumber: TLabel;
    lblNewStaffPassword: TLabel;
    lblNewStaffName: TLabel;
    edtNewStaffAddress: TEdit;
    lblNewStaffAddress: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlSignupbtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    function CreateStaffID(Name, Number: String): String;

  private
    { Private declarations }
  public
    { Public declarations }
  end;


  function IsValidNumber(const Number: string): Boolean; external 'Validation.dll'
  function IsValidPassword(const Password: string): Boolean; external 'Validation.dll'
  function IsValidEmail(const Email: string): Boolean; external 'Validation.dll'
  function IsValidName(Const Name: String): Boolean; external 'Validation.dll'



var
  frmSignup: TfrmSignup;

implementation
uses
Login_u;

{$R *.dfm}



function TfrmSignup.CreateStaffID(Name, Number: String): String;
var
NewStaffID : String;
SpacePos : integer;
begin
  SpacePos := Pos(' ',name);
  NewStaffID := Copy(Name,1,SpacePos-1) + Copy(Name,SpacePos+1,1) + copy(Number,1,2);
  result := NewStaffID;
end;

procedure TfrmSignup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmLogin.show;
end;



procedure TfrmSignup.FormCreate(Sender: TObject);
begin
frmLogin.connectDB;
end;

procedure TfrmSignup.pnlSignupbtnClick(Sender: TObject);
var
TempPass : string;
NewStaffID, FirstName, Surname, CellNumber : String;
SpacePos : integer;
UserAdded : boolean;
begin
UserAdded := False;
if IsValidPassword(edtNewStaffPassword.text) = False then
  begin
    ShowMessage('Password must contain at least 8 characters and 1 special character');
    Exit
  end;

if IsValidNumber(edtNewStaffNumber.text) = False then
  begin
    ShowMessage('Invalid Phone Number');
    Exit
  end;

if IsValidEmail(edtNewStaffEmail.text) = False then
  begin
    ShowMessage('Invalid Email');
    Exit
  end;

TempPass := InputBox('Confirm Password', 'Enter Password', '');
if edtNewStaffPassword.Text = TempPass then
  begin
    tblStaff.First;
    tblStaff.Edit;
    if tblStaff['Staff_ID'] = '0000' then
      begin
        tblStaff.Delete;
      end;

    tblStaff.append;
    tblStaff['Staff_ID'] := CreateStaffID(edtNewStaffName.text,edtNewStaffNumber.text);
    tblStaff['Staff_Name'] := edtNewStaffName.Text;
    tblStaff['Password'] := edtNewStaffPassword.Text;
    tblStaff['Cell_Number'] := edtNewStaffNumber.Text;
    tblStaff['Email'] := edtNewStaffEmail.Text;
    tblStaff['Address'] := edtNewStaffAddress.Text;
    tblStaff['Manager'] := True;
    tblStaff.Post;
    UserAdded := True;
  end;

if UserAdded = True then
  begin
    Showmessage('User Successfilly added');
    sleep(300);
    frmSignup.Close;
  end;

end;

end.
