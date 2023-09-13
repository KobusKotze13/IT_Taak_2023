unit Kobus_POS_p;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TfrmMain = class(TForm)
    pgcMain: TPageControl;
    tbsLogin: TTabSheet;
    tbsPOS: TTabSheet;
    tbsStock: TTabSheet;
    tbsManageStaff: TTabSheet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

end.
