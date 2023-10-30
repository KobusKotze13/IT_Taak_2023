unit Login_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, POS_u, adodb, Data.DB, Vcl.Grids,
  Vcl.DBGrids, clsStaff_u;

type
  TfrmLogin = class(TForm)
    gplLogin: TGridPanel;
    lblTitle: TLabel;
    edtPass: TEdit;
    edtUserName: TEdit;
    pnlLoginbtn: TPanel;
    pnlSignUpBtn: TPanel;
    procedure pnlLoginbtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtUserNameClick(Sender: TObject);
    procedure edtPassClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

    StaffUser : TStaff;

    procedure connectDb;
  end;

var
  frmLogin: TfrmLogin;
  conPOS_Database : TADOConnection;
  tblStaff : TADOTable;
  tblStock : TADOTable; //change variable names to your database names
  tblSuppliers : TADOTable;
  dsrStaff : TDataSource; //change variable names to your database names
  dsrStock : TDataSource;
  dsrSuppliers : TDataSource;
  sDatabaseName : string;
  sTableStaff : string;
  sTableStock : string;
  sTableSuppliers : string;

implementation



{$R *.dfm}


procedure TfrmLogin.connectDb;
begin
conPOS_Database := TADOConnection.Create(Self);

 sDatabaseName := 'POS_Database';
 sTableStaff := 'Staff';
 sTableStock := 'Stock';
 sTableSuppliers := 'Suppliers';

 conPOS_Database.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+sDatabaseName+'.mdb;Mode=ReadWrite;Persist Security Info=False';
 conPOS_Database.LoginPrompt := False;
 conPOS_Database.Connected := True;



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

 dsrStaff := TDataSource.Create(Self);
 dsrStaff.DataSet := tblStaff;

 dsrStock := TDataSource.Create(Self);
 dsrStock.DataSet := tblStock;

 dsrSuppliers := TDataSource.Create(Self);
 dsrSuppliers.DataSet := tblSuppliers;

end;

procedure TfrmLogin.edtPassClick(Sender: TObject);
begin
edtPass.Clear;
end;

procedure TfrmLogin.edtUserNameClick(Sender: TObject);
begin
edtUserName.Clear;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
connectDB;
WindowState := TWindowState.wsMaximized;
gplLogin.Color := RGB(77,120,146);
pnlLoginbtn.Font.Color := RGB(135,188,222);
pnlSignupbtn.Font.Color := RGB(135,188,222);
pnlLoginbtn.SetFocus;
end;

procedure TfrmLogin.pnlLoginbtnClick(Sender: TObject);
var
Username, Password : String;
LoginSuccessfull :boolean;
begin
LoginSuccessfull := False;
Username := edtUserName.Text;
Password := edtPass.Text;

tblStaff.First;

while (NOT tblStaff.EOF) and (LoginSuccessfull = False)  do
  begin
    if (Username = tblStaff['Staff_ID']) and (Password = tblStaff['Password']) then
      begin
        StaffUser := TStaff.Create();
        LoginSuccessfull := True;
        StaffUser.Set_Name(tblStaff['Staff_Name']);
        StaffUser.Set_StaffId(tblStaff['Staff_ID']);
        StaffUser.Set_Password(tblStaff['Password']);
        StaffUser.Set_ManagerStatus(tblStaff['Manager']);
        frmPOS.show;
        frmLogin.Hide;
        break;
      end;



  tblStaff.Next;
  end;

if LoginSuccessfull = False then
  begin
    Showmessage('StaffID or Password is incorrect');
  end;

end;

end.
