unit Login_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, POS_u, adodb, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

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

  private
    { Private declarations }
  public
    { Public declarations }
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

 conPOS_Database.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+sDatabaseName +'.mdb;Persist Security Info=False';
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

procedure TfrmLogin.FormShow(Sender: TObject);
begin
WindowState := TWindowState.wsMaximized;
gplLogin.Color := RGB(77,120,146);
pnlLoginbtn.Font.Color := RGB(135,188,222);
end;

procedure TfrmLogin.pnlLoginbtnClick(Sender: TObject);
begin
frmPOS.show;
//frmLogin.Hide;
end;

end.
