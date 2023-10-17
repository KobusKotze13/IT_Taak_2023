unit Login_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, POS_u;

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
  end;

var
  frmLogin: TfrmLogin;

implementation



{$R *.dfm}


procedure TfrmLogin.FormShow(Sender: TObject);
begin
WindowState := TWindowState.wsMaximized;
end;

procedure TfrmLogin.pnlLoginbtnClick(Sender: TObject);
begin
frmPOS.show;
end;

end.
