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

    // Event handler for when the form is closed
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    // Event handler for the Signup button
    procedure pnlSignupbtnClick(Sender: TObject);

    // Event handler for when the form is created
    procedure FormCreate(Sender: TObject);

    // Function to create a staff ID
    function CreateStaffID(Name, Number: String): String;

    // Event handler for when the form is shown
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // External functions to validate inputs (imported from Validation.dll)
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

// Function to create a unique staff ID
function TfrmSignup.CreateStaffID(Name, Number: String): String;
var
  NewStaffID: String;
  SpacePos: integer;
begin
  SpacePos := Pos(' ', Name);
  NewStaffID := Copy(Name, 1, SpacePos - 1) + Copy(Name, SpacePos + 1, 1) + Copy(Number, 1, 2);
  Result := NewStaffID;
end;

// Event handler for when the form is closed
procedure TfrmSignup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmLogin.show;
end;

// Event handler for when the form is created
procedure TfrmSignup.FormCreate(Sender: TObject);
begin
  frmLogin.connectDB;
end;

// Event handler for when the form is shown
procedure TfrmSignup.FormShow(Sender: TObject);
begin
  WindowState := TWindowState.wsMaximized;
end;

// Event handler for the Signup button
procedure TfrmSignup.pnlSignupbtnClick(Sender: TObject);
var
  TempPass: string;
  NewStaffID, FirstName, Surname, CellNumber: String;
  SpacePos: integer;
  UserAdded: boolean;
begin
  UserAdded := False;

  // Validate the password
  if IsValidPassword(edtNewStaffPassword.Text) = False then
  begin
    ShowMessage('Password must contain at least 8 characters and 1 special character');
    Exit;
  end;

  // Validate the phone number
  if IsValidNumber(edtNewStaffNumber.Text) = False then
  begin
    ShowMessage('Invalid Phone Number');
    Exit;
  end;

  // Validate the email address
  if IsValidEmail(edtNewStaffEmail.Text) = False then
  begin
    ShowMessage('Invalid Email');
    Exit;
  end;

  // Prompt for password confirmation
  TempPass := InputBox('Confirm Password', 'Enter Password', '');

  // If the passwords match, proceed with user creation
  if edtNewStaffPassword.Text = TempPass then
  begin
    // Remove any existing initial setup record
    tblStaff.First;
    tblStaff.Edit;
    while NOT tblStaff.Eof do
    begin
      if tblStaff['Staff_ID'] = '0000' then
      begin
        tblStaff.Delete;
      end;
      tblStaff.Next;
    end;

    // Add a new user record
    tblStaff.Append;
    tblStaff['Staff_ID'] := CreateStaffID(edtNewStaffName.Text, edtNewStaffNumber.Text);
    tblStaff['Staff_Name'] := edtNewStaffName.Text;
    tblStaff['Password'] := edtNewStaffPassword.Text;
    tblStaff['Cell_Number'] := edtNewStaffNumber.Text;
    tblStaff['Email'] := edtNewStaffEmail.Text;
    tblStaff['Address'] := edtNewStaffAddress.Text;
    tblStaff['Manager'] := True;
    tblStaff.Post;
    UserAdded := True;
  end;

  // Show a message indicating success or failure
  if UserAdded = True then
  begin
    ShowMessage('User Successfully Added');
    Sleep(300);
    frmSignup.Close;
  end;
end;

end.

