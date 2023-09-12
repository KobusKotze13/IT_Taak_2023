program Kobus_POS_u;

uses
  Vcl.Forms,
  Kobus_POS_p in 'Kobus_POS_p.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
