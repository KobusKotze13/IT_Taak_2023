unit Staff_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmStaff = class(TForm)
    pnlStaffBackground: TPanel;
    dbgStaff: TDBGrid;
    dbnStaff: TDBNavigator;
    pnlSearchBtn: TPanel;
    edtSearchName: TEdit;
    pnlRemStaffBtn: TPanel;
    pnlManagerBtn: TPanel;
    edtEnterName: TEdit;
    edtPassEnter: TEdit;
    edtAddress: TEdit;
    edtCellNum: TEdit;
    edtEmail: TEdit;
    edtWage: TEdit;
    pnlAddStaff: TPanel;
    pnlRemMAnager: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStaff: TfrmStaff;

implementation

{$R *.dfm}

end.
