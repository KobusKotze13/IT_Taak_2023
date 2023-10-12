unit Login_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmLogin = class(TForm)
    gplLogin: TGridPanel;
    lblTitle: TLabel;
    edtPass: TEdit;
    edtUserName: TEdit;
    pnlLoginbtn: TPanel;
    pnlSignUpBtn: TPanel;
    procedure pnlLoginBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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

procedure TfrmLogin.FormShow(Sender: TObject);
begin
frmPos.Hide;
end;

procedure TfrmLogin.pnlLoginBtnClick(Sender: TObject);
begin
frmPOS.Show;
end;

end.
