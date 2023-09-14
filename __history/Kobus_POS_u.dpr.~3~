program Kobus_POS_u;

uses
  Vcl.Forms,
  Kobus_POS_p in 'Kobus_POS_p.pas' {frmPOS__Main},
  Kobus_Login_p in 'Kobus_Login_p.pas' {frmLogin},
  Kobus_Stock_p in 'Kobus_Stock_p.pas' {frmStaff},
  Kobus_Staff_p in 'Kobus_Staff_p.pas' {frmStock};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPOS__Main, frmPOS__Main);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmStaff, frmStaff);
  Application.CreateForm(TfrmStock, frmStock);
  Application.Run;
end.
