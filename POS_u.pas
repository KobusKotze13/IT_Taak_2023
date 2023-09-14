unit POS_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Login_u;

type
  TfrmPOS = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
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

end.
