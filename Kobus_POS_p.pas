unit Kobus_POS_p;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    pgcMain: TPageControl;
    tbsLogin: TTabSheet;
    tbsPOS: TTabSheet;
    tbsStock: TTabSheet;
    tbsManageStaff: TTabSheet;
    pnlStaffBackground: TPanel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.FormCreate(Sender: TObject);
var
ScaleFactorX, ScaleFactorY: Single;
begin

WindowState := TWindowState.wsMaximized;

end;

end.
