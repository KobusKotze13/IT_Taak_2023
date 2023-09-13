program Kobus_POS_u;

uses
  Vcl.Forms,
  Kobus_POS_p in 'Kobus_POS_p.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
