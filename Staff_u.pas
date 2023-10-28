unit Staff_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmStaff = class(TForm)
    gplStaff: TGridPanel;
    dbgStaff: TDBGrid;
    edtAddress: TEdit;
    edtCellNum: TEdit;
    edtEmail: TEdit;
    edtEnterName: TEdit;
    edtPassEnter: TEdit;
    edtSearchName: TEdit;
    edtWage: TEdit;
    pnlAddStaff: TPanel;
    pnlManagerBtn: TPanel;
    pnlRemMAnager: TPanel;
    pnlRemStaffBtn: TPanel;
    pnlSearchBtn: TPanel;
    pnlBackToPOSBtn: TPanel;
    procedure pnlBackToPOSBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStaff: TfrmStaff;

implementation
uses
POS_u, Login_u;

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
end;

procedure TfrmStaff.pnlBackToPOSBtnClick(Sender: TObject);
begin
frmPOS.Show;
frmStaff.Close;
end;

end.
