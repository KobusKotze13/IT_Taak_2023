unit Staff_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, strUtils;

type
  TfrmStaff = class(TForm)
    gplStaff: TGridPanel;
    dbgStaff: TDBGrid;
    edtSearchName: TEdit;
    pnlAddStaff: TPanel;
    pnlManagerBtn: TPanel;
    pnlRemStaffBtn: TPanel;
    pnlSearchBtn: TPanel;
    pnlBackToPOSBtn: TPanel;
    lblSearchStaff: TLabel;
    pnlEditStaff: TPanel;
    procedure pnlBackToPOSBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlSearchBtnClick(Sender: TObject);
    procedure pnlAddStaffClick(Sender: TObject);
    procedure pnlManagerBtnClick(Sender: TObject);
    procedure pnlRemStaffBtnClick(Sender: TObject);
    procedure pnlEditStaffClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function IsValidNumber(const Number: string): Boolean; external 'Validation.dll'
  function IsValidPassword(const Password: string): Boolean; external 'Validation.dll'
  function IsValidEmail(const Email: string): Boolean; external 'Validation.dll'
  function IsValidName(Const Name: String): Boolean; external 'Validation.dll'
  function IsValidWage(Const Wage: String): Boolean; external 'Validation.dll'

var
  frmStaff: TfrmStaff;

implementation
uses
POS_u, Login_u, Signup_u;

{$R *.dfm}

procedure TfrmStaff.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmLogin.Show;

end;

procedure TfrmStaff.FormShow(Sender: TObject);
begin
WindowState := TWindowState.wsMaximized;
frmLogin.connectdb;
dbgStaff.DataSource := dsrStaff;
tblStaff.Open;
end;

procedure TfrmStaff.pnlAddStaffClick(Sender: TObject);
begin
frmSignup.show;
end;

procedure TfrmStaff.pnlBackToPOSBtnClick(Sender: TObject);
begin
frmPOS.Show;
frmStaff.Close;
end;

procedure TfrmStaff.pnlEditStaffClick(Sender: TObject);
var
FieldName : string;
TempNewValue :String;
ValueEdited, ValidField : boolean;
begin
ValueEdited := False;
ValidField := False;


while ValidField = False do
  begin
    FieldName := inputbox('Select Field', 'Select a field to edit','eg. Staff_name');

    if MatchStr(FieldName , ['Staff_Name','Password', 'Cell_Number', 'Email', 'Address', 'Wage']) = True then
      begin
        ValidField := True
      end
    else
      begin
        if FieldName = 'Staff_ID' then
          begin
            Showmessage('You cannot edit the Staff_ID field');
          end
        else
          begin
            if FieldName = 'Is_Manager' then
              begin
                Showmessage('You cannot edit the Is_Manager field. Click the "Edit Manager Status"'+
                               ' button to change manager status.');
              end
            else
              begin
                showmessage('Invalid Field');
              end;
          end;
      end;
  end;

while ValueEdited = False do
  begin
    tblStaff.Edit;
    TempNewValue :=  inputbox('Enter a new value', 'Enter a new value for ' + FieldName, '');
    if FieldName = 'Password' then
      begin
        if IsValidPassword(TempNewValue) = True then
          begin
            tblStaff['Password'] := TempNewValue;
            ValueEdited := True;
          end
        else
          begin
            Showmessage('Invalid Password');
          end;
      end
    else
      begin
        if FieldName = 'Cell_Number' then
          begin
            if IsValidNumber(TempNewValue) = True then
              begin
                tblStaff['Cell_Number'] := TempNewValue;
                ValueEdited := True;
              end
            else
              begin
                Showmessage('Invalid Cellphone Number');
              end;
          end
        else
          begin
            if Fieldname = 'Email' then
              begin
                if IsvalidEmail(TempNewValue) = True then
                  begin
                    tblStaff['Email'] := TempNewValue;
                    ValueEdited := True;
                  end
                else
                  begin
                    Showmessage('Invalid Email');
                  end;
              end
            else
              begin
                if Fieldname = 'Email' then
                  begin
                    if IsValidName(TempNewValue) = True then
                      begin
                        tblStaff['Staff_Name'] := TempNewValue;
                        ValueEdited := True;
                      end
                    else
                      begin
                        Showmessage('Invalid Name. Format should be Name + space +'+
                                    ' Surname with the first letter of both capitalised');
                      end;
                  end
                else
                  begin
                    if Fieldname = 'Wage' then
                      begin
                        if IsvalidWage(TempNewValue) = True then
                          begin
                            tblStaff['Wage'] := StrToFloat(TempNewValue);
                            ValueEdited := True;
                          end
                        else
                          begin
                            Showmessage('Invalid Wage. Must be between 0 and 999'+
                                        ' with not more than 2 numbers after the decimal point');
                          end;
                      end
                    else
                      begin
                        tblStaff[FieldName] := TempNewValue;
                        ValueEdited := True;
                      end;
                  end;

              end;
          end;
      end;


  end;
tblStaff.Post;
frmSignup.CreateStaffID(tblStaff['Staff_Name'],tblStaff['Cell_Number']);

dbgStaff.DataSource.DataSet.Refresh;
end;

procedure TfrmStaff.pnlManagerBtnClick(Sender: TObject);
begin
tblStaff.Edit;
if tblStaff['Manager'] = True then
  begin
    tblStaff['Manager'] := False;
  end
else
  begin
    tblStaff['Manager'] := True;
  end;
tblStaff.Post;
dsrStaff.DataSet := tblStaff;
end;

procedure TfrmStaff.pnlRemStaffBtnClick(Sender: TObject);
begin
tblStaff.Edit;
if MessageDlg('Are you sure you want to permanently delete '+tblStaff['Staff_Name'],
            TMsgDlgType.mtWarning,[mbNo, mbYes],0,mbNo) = mrYes then
  begin
    tblStaff.Delete;
  end;
tblStaff.post;
dbgStaff.DataSource.DataSet.Refresh;
end;

procedure TfrmStaff.pnlSearchBtnClick(Sender: TObject);
begin
tblStaff.First;
tblStaff.Locate('Staff_Name', edtSearchName.Text,[loCaseInsensitive,loPartialKey]);
dbgStaff.DataSource.DataSet.Refresh;
end;

end.
