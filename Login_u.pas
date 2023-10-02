unit Login_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmLogin = class(TForm)
    pnlLoginBackground: TPanel;
    pnlLodinBtn: TPanel;
    pnlSignUp: TPanel;
    edtUserName: TEdit;
    edtPass: TEdit;
    lblTitle: TLabel;
    procedure pnlLodinBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses
POS_u;

{$R *.dfm}

procedure TfrmLogin.pnlLodinBtnClick(Sender: TObject);
begin
frmPOS.Show;
end;

end.
