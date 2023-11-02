unit Signup_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmSignup = class(TForm)
    gplSignup: TGridPanel;
    edtNewStaffPassword: TEdit;
    edtNewStaffName: TEdit;
    lblSignup: TLabel;
    Panel1: TPanel;
    edtNewStaffNUmber: TEdit;
    edtNewStaffEmail: TEdit;
    lblNewStaffEmail: TLabel;
    lblNewStaffNumber: TLabel;
    lblNewStaffPassword: TLabel;
    lblNewStaffName: TLabel;
    edtNewStaffAddress: TEdit;
    lblNewStaffAddress: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSignup: TfrmSignup;

implementation
uses
Login_u;

{$R *.dfm}

procedure TfrmSignup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmLogin.show;
end;

end.
