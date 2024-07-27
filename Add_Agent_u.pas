unit Add_Agent_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Samples.Spin ;

type
  TfrmAddAgent = class(TForm)
    gplPOS: TGridPanel;
    pnlMainMenubtn: TPanel;
    lblEmailAddress: TLabel;
    lblCellphoneNum: TLabel;
    lblIDNum: TLabel;
    lblSurname: TLabel;
    edtSurname: TEdit;
    edtCellphoneNum: TEdit;
    edtEmail: TEdit;
    lblPassword: TLabel;
    edtPassword: TEdit;
    lblName: TLabel;
    edtName: TEdit;
    lblConfirmPassword: TLabel;
    edtIDNum: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure FormCreate(Sender: TObject);


    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // External functions to validate inputs (imported from Validation.dll)
  function IsValidNumber(const Number: string): Boolean; external 'Validation.dll'
  function IsValidPassword(const Password: string): Boolean; external 'Validation.dll'
  function IsValidEmail(const Email: string): Boolean; external 'Validation.dll'
  function IsValidName(Const Name: String): Boolean; external 'Validation.dll'

var
  frmAddAgent: TfrmAddAgent;

implementation
uses
Login_u;


{$R *.dfm}


// Event handler for when the form is closed
procedure TfrmAddAgent.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmLogin.show;
end;

// Event handler for when the form is created
procedure TfrmAddAgent.FormCreate(Sender: TObject);
begin
  frmLogin.connectDB;
end;

// Event handler for when the form is shown
procedure TfrmAddAgent.FormShow(Sender: TObject);
begin
  WindowState := TWindowState.wsMaximized;
end;


end.

