unit Kobus_POS_p;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmPOS__Main = class(TForm)
    pnlPOSBackground: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPOS__Main: TfrmPOS__Main;

implementation

{$R *.dfm}

procedure TfrmPOS__Main.FormCreate(Sender: TObject);
var
ScaleFactorX, ScaleFactorY: Single;
begin

WindowState := TWindowState.wsMaximized;

end;

end.
