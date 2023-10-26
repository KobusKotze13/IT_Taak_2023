unit POS_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmPOS = class(TForm)
    gplPOS: TGridPanel;
    cmbExtra1: TComboBox;
    cmbExtra2: TComboBox;
    cmbExtra3: TComboBox;
    cmbMeatSelect: TComboBox;
    cmbPapSelect: TComboBox;
    cmbVegSelect: TComboBox;
    pnlAddOrderBtn: TPanel;
    pnlFinalOrder: TPanel;
    pnlLogout: TPanel;
    pnlManagaeStaffBtn: TPanel;
    pnlManageStockBtn: TPanel;
    redOrder: TRichEdit;
    procedure pnlLogoutClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnlManagaeStaffBtnClick(Sender: TObject);
    procedure pnlManageStockBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPOS: TfrmPOS;

implementation

uses
Login_u, Staff_u, Stock_u;

{$R *.dfm}



procedure TfrmPOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmLogin.Show;
end;

procedure TfrmPOS.FormShow(Sender: TObject);
begin
WindowState := TWindowState.wsMaximized;
end;

procedure TfrmPOS.pnlLogoutClick(Sender: TObject);
begin
frmLogin.Show;
frmPOS.Close;
end;

procedure TfrmPOS.pnlManagaeStaffBtnClick(Sender: TObject);
begin
frmStaff.Show;
frmPOS.Close;
end;

procedure TfrmPOS.pnlManageStockBtnClick(Sender: TObject);
begin
frmStock.Show;
frmPOS.Close;
end;

end.
