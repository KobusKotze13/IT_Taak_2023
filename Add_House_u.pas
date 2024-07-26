unit Add_House_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmAddHouse = class(TForm)
    gplPOS: TGridPanel;
    pnlAddOrderBtn: TPanel;
    pnlMainMenubtn: TPanel;
    redOrder: TRichEdit;
    lblExtra: TLabel;
    lblVeg: TLabel;
    lblMeat: TLabel;
    lblPap: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;

    procedure FormShow(Sender: TObject);

    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  var
   

  public
    { Public declarations }
  end;

var
  frmAddHouse: TfrmAddHouse;

implementation

uses
  Login_u;

{$R *.dfm}



// Event handler for when the form is closed
procedure TfrmAddHouse.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmLogin.Show;
end;

// Event handler for when the form is shown
procedure TfrmAddHouse.FormShow(Sender: TObject);
begin
  WindowState := TWindowState.wsMaximized;

end;


end.

