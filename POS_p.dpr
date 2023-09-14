program POS_p;

uses
  Vcl.Forms,
  POS_u in 'POS_u.pas' {frmPOS},
  Login_u in 'Login_u.pas' {frmLogin},
  Staff_u in 'Staff_u.pas' {Form1},
  Stock_u in 'Stock_u.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPOS, frmPOS);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
