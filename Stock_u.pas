unit Stock_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmStock = class(TForm)
    gplStock: TGridPanel;
    dbgStock: TDBGrid;
    edtSearchProductName: TEdit;
    pnlAddProductBtn: TPanel;
    pnlBackToPOSBtn: TPanel;
    pnlRemStockBtn: TPanel;
    pnlSearchBtn: TPanel;
    procedure pnlBackToPOSBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStock: TfrmStock;

implementation
uses
POS_u,Login_u;

{$R *.dfm}

procedure TfrmStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmLogin.Show;
end;

procedure TfrmStock.FormShow(Sender: TObject);
begin
WindowState := TWindowState.wsMaximized;
frmLogin.connectdb;
dbgStock.DataSource := dsrStock;
end;

procedure TfrmStock.pnlBackToPOSBtnClick(Sender: TObject);
begin
frmPOS.Show;
frmStock.Hide;
end;

end.
