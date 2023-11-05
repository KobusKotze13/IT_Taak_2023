unit Login_u;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, POS_u, adodb, Data.DB, Vcl.Grids,
  Vcl.DBGrids, clsStaff_u, Signup_u;
type
  TfrmLogin = class(TForm)
    gplLogin: TGridPanel;
    lblTitle: TLabel;
    edtPass: TEdit;
    edtUserName: TEdit;
    pnlLoginbtn: TPanel;
    lblStaffID: TLabel;
    lblEnterPassword: TLabel;
    // Event handler for the Login button
    procedure pnlLoginbtnClick(Sender: TObject);
    // Event handler for when the form is shown
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    // Staff user object to store user information
    StaffUser: TStaff;
    // Function to connect to the database
    procedure connectDb;
  end;
var
  // Declaration and DB connection variables
  frmLogin: TfrmLogin;
  conPOS_Database: TADOConnection;
  tblStaff: TADOTable;
  tblStock: TADOTable;
  tblSuppliers: TADOTable;
  dsrStaff: TDataSource;
  dsrStock: TDataSource;
  dsrSuppliers: TDataSource;
  sDatabaseName: string;
  sTableStaff: string;
  sTableStock: string;
  sTableSuppliers: string;
implementation
{$R *.dfm}
// Function to connect to the database
procedure TfrmLogin.connectDb;
begin
  conPOS_Database := TADOConnection.Create(Self);
  sDatabaseName := 'POS_Database';
  sTableStaff := 'Staff';
  sTableStock := 'Stock';
  sTableSuppliers := 'Suppliers';
  // Configure the database connection
  conPOS_Database.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + sDatabaseName + '.mdb;Mode=ReadWrite;Persist Security Info=False';
  conPOS_Database.LoginPrompt := False;
  conPOS_Database.Connected := True;
  // Create tables for Staff, Stock, and Suppliers
  tblStaff := TADOTable.Create(Self);
  tblStaff.Connection := conPOS_Database;
  tblStaff.TableName := sTableStaff;
  tblStaff.Active := True;
  tblStock := TADOTable.Create(Self);
  tblStock.Connection := conPOS_Database;
  tblStock.TableName := sTableStock;
  tblStock.Active := True;
  tblSuppliers := TADOTable.Create(Self);
  tblSuppliers.Connection := conPOS_Database;
  tblSuppliers.TableName := sTableSuppliers;
  tblSuppliers.Active := True;
  // Create data sources for the tables
  dsrStaff := TDataSource.Create(Self);
  dsrStaff.DataSet := tblStaff;
  dsrStock := TDataSource.Create(Self);
  dsrStock.DataSet := tblStock;
  dsrSuppliers := TDataSource.Create(Self);
  dsrSuppliers.DataSet := tblSuppliers;
end;
// Event handler for when the form is shown
procedure TfrmLogin.FormShow(Sender: TObject);
begin
  // Connect to the database
  connectDb;
  // Set form properties
  WindowState := TWindowState.wsMaximized;
  gplLogin.Color := RGB(77, 120, 146);
  pnlLoginbtn.Font.Color := RGB(135, 188, 222);
  pnlLoginbtn.SetFocus;
  edtUserName.Clear;
  edtPass.Clear;
  // Check if there are no staff records for the initial setup
  tblStaff.First;
  while NOT tblStaff.Eof do
  begin
    if tblStaff['Staff_Name'] = '0000' then
    begin
      // Show the signup form and break the loop
      frmSignup.Show;
      break;
    end;
    tblStaff.Next;
  end;
end;
// Event handler for the Login button
procedure TfrmLogin.pnlLoginbtnClick(Sender: TObject);
var
  Username, Password: String;
  LoginSuccessful: boolean;
begin
  LoginSuccessful := False;
  Username := edtUserName.Text;
  Password := edtPass.Text;
  // Start from the first record in the staff table
  tblStaff.First;
  while (NOT tblStaff.EOF) and (NOT LoginSuccessful) do
  begin
    // Check if the entered username and password match a record
    if (Username = tblStaff['Staff_ID']) and (Password = tblStaff['Password']) then
    begin
      // Create a Staff object to store user information
      StaffUser := TStaff.Create();
      LoginSuccessful := True;
      StaffUser.Set_Name(tblStaff['Staff_Name']);
      StaffUser.Set_StaffId(tblStaff['Staff_ID']);
      StaffUser.Set_Password(tblStaff['Password']);
      StaffUser.Set_ManagerStatus(tblStaff['Manager']);
      // Show the POS form and hide the login form
      frmPOS.show;
      frmLogin.Hide;
      break; // No need to continue checking
    end;
    tblStaff.Next;
  end;
  // If login is not successful, show an error message
  if NOT LoginSuccessful then
  begin
    ShowMessage('StaffID or Password is incorrect');
  end;
end;
end.

