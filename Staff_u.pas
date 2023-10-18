unit Staff_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TfrmStaff = class(TForm)
    gplStaff: TGridPanel;
    dbgStaff: TDBGrid;
    dbnStaff: TDBNavigator;
    edtAddress: TEdit;
    edtCellNum: TEdit;
    edtEmail: TEdit;
    edtEnterName: TEdit;
    edtPassEnter: TEdit;
    edtSearchName: TEdit;
    edtWage: TEdit;
    pnlAddStaff: TPanel;
    pnlManagerBtn: TPanel;
    pnlRemMAnager: TPanel;
    pnlRemStaffBtn: TPanel;
    pnlSearchBtn: TPanel;
    pnlBackToPOSBtn: TPanel;
    procedure pnlBackToPOSBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStaff: TfrmStaff;

implementation
uses
POS_u;

{$R *.dfm}

procedure TfrmStaff.FormShow(Sender: TObject);
begin
WindowState := TWindowState.wsMaximized
end;

procedure TfrmStaff.pnlBackToPOSBtnClick(Sender: TObject);
begin
frmPOS.Show;
frmStaff.Close;
end;

end.
