program POS_p;

uses
  Vcl.Forms,
  POS_u in 'POS_u.pas' {frmPOS},
  Login_u in 'Login_u.pas' {frmLogin},
  Staff_u in 'Staff_u.pas' {frmStaff},
  Stock_u in 'Stock_u.pas' {frmStock},
  Signup_u in 'Signup_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPOS, frmPOS);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmStaff, frmStaff);
  Application.CreateForm(TfrmStock, frmStock);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
