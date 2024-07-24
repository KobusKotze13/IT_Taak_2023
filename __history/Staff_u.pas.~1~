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
    // Event handler for going back to the POS form
    procedure pnlBackToPOSBtnClick(Sender: TObject);
    // Event handler for when the form is shown
    procedure FormShow(Sender: TObject);
    // Event handler for when the form is closed
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    // Event handler for the search button
    procedure pnlSearchBtnClick(Sender: TObject);
    // Event handler for adding a new staff member
    procedure pnlAddStaffClick(Sender: TObject);
    // Event handler for changing manager status
    procedure pnlManagerBtnClick(Sender: TObject);
    // Event handler for removing a staff member
    procedure pnlRemStaffBtnClick(Sender: TObject);
    // Event handler for editing staff information
    procedure pnlEditStaffClick(Sender: TObject);
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
  function IsValidWage(Const Wage: String): Boolean; external 'Validation.dll'
var
  frmStaff: TfrmStaff;
implementation
uses
POS_u, Login_u, Signup_u;
{$R *.dfm}
// Event handler for when the form is closed
procedure TfrmStaff.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmLogin.Show;
end;
// Event handler for when the form is shown
procedure TfrmStaff.FormShow(Sender: TObject);
begin
  WindowState := TWindowState.wsMaximized;
  frmLogin.connectdb;
  dbgStaff.DataSource := dsrStaff;
end;
// Event handler for adding a new staff member
procedure TfrmStaff.pnlAddStaffClick(Sender: TObject);
begin
  frmSignup.Show;
end;
// Event handler for going back to the POS form
procedure TfrmStaff.pnlBackToPOSBtnClick(Sender: TObject);
begin
  frmPOS.Show;
  frmStaff.Close;
end;
// Event handler for editing staff information
procedure TfrmStaff.pnlEditStaffClick(Sender: TObject);
var
  FieldName: string;
  TempNewValue: String;
  ValueEdited, ValidField: boolean;
begin
  ValueEdited := False;
  ValidField := False;
  while ValidField = False or (FieldName = 'Exit') do
  begin
    FieldName := InputBox('Select Field', 'Select a field to edit', 'eg. Staff_name');
    if MatchStr(FieldName, ['Staff_Name', 'Password', 'Cell_Number', 'Email', 'Address', 'Wage']) = True then
    begin
      ValidField := True
    end
    else
    begin
      if FieldName = 'Staff_ID' then
      begin
        ShowMessage('You cannot edit the Staff_ID field');
      end
      else
      begin
        if FieldName = 'Is_Manager' then
        begin
          ShowMessage('You cannot edit the Is_Manager field. Click the "Edit Manager Status"'+
            ' button to change manager status.');
        end
        else
        begin
          ShowMessage('Invalid Field');
        end;
      end;
    end;
  end;
  if Fieldname = 'Exit' then
    begin
      exit
    end;
  while ValueEdited = False or (TempNewValue = 'Exit') do
  begin
    tblStaff.Edit;
    TempNewValue :=  InputBox('Enter a new value', 'Enter a new value for ' + FieldName, '');
    if FieldName = 'Password' then
    begin
      if IsValidPassword(TempNewValue) = True then
      begin
        tblStaff['Password'] := TempNewValue;
        ValueEdited := True;
      end
      else
      begin
        ShowMessage('Invalid Password');
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
          ShowMessage('Invalid Cellphone Number');
        end;
      end
      else
      begin
        if FieldName = 'Email' then
        begin
          if IsValidEmail(TempNewValue) = True then
          begin
            tblStaff['Email'] := TempNewValue;
            ValueEdited := True;
          end
          else
          begin
            ShowMessage('Invalid Email');
          end;
        end
        else
        begin
          if FieldName = 'Name' then
          begin
            if IsValidName(TempNewValue) = True then
            begin
              tblStaff['Staff_Name'] := TempNewValue;
              ValueEdited := True;
            end
            else
            begin
              ShowMessage('Invalid Name. Format should be Name + space +'+
                ' Surname with the first letter of both capitalized');
            end;
          end
          else
          begin
            if FieldName = 'Wage' then
            begin
              if IsValidWage(TempNewValue) = True then
              begin
                tblStaff['Wage'] := StrToFloat(TempNewValue);
                ValueEdited := True;
              end
              else
              begin
                ShowMessage('Invalid Wage. Must be between 0 and 999'+
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
  frmSignup.CreateStaffID(tblStaff['Staff_Name'], tblStaff['Cell_Number']);
end;
// Event handler for changing manager status
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
end;
// Event handler for removing a staff member
procedure TfrmStaff.pnlRemStaffBtnClick(Sender: TObject);
begin
  if MessageDlg('Are you sure you want to permanently delete ' + tblStaff['Staff_Name'],
    TMsgDlgType.mtWarning, [mbNo, mbYes], 0, mbNo) = mrYes then
  begin
    tblStaff.Delete;
  end;
end;
// Event handler for the search button
procedure TfrmStaff.pnlSearchBtnClick(Sender: TObject);
begin
  tblStaff.First;
  tblStaff.Locate('Staff_Name', edtSearchName.Text, [loCaseInsensitive, loPartialKey]);
end;

end.
