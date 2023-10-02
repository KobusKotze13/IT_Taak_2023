unit POS_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Login_u, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TfrmPOS = class(TForm)
    pnlPOSBackground: TPanel;
    cmbPapSelect: TComboBox;
    cmbMeatSelect: TComboBox;
    cmbVegSelect: TComboBox;
    cmbExtra1: TComboBox;
    cmbExtra2: TComboBox;
    cmbExtra3: TComboBox;
    redOrder: TRichEdit;
    pnlAddOrderBtn: TPanel;
    pnlFinalOrder: TPanel;
    pnlManagaeStaffBtn: TPanel;
    pnlManageStockBtn: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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

procedure TfrmPOS.FormCreate(Sender: TObject);
begin
frmLogin.Show;
frmPOS.Hide;
end;

end.
