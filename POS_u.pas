unit POS_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Login_u, Vcl.ExtCtrls,
  Vcl.ComCtrls;

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
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPOS: TfrmPOS;

implementation

{$R *.dfm}

procedure TfrmPOS.Button1Click(Sender: TObject);
begin
frmLogin.show;
frmPOS.hide;
end;


procedure TfrmPOS.FormShow(Sender: TObject);
begin
frmLogin.Show;
frmPos.Hide;end;

end.
