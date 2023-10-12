unit Stock_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmStock = class(TForm)
    pnlStockBackground: TPanel;
    dbgStaff: TDBGrid;
    dbnStaff: TDBNavigator;
    edtSearchName: TEdit;
    pnlAddStaff: TPanel;
    pnlRemStaffBtn: TPanel;
    pnlSearchBtn: TPanel;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStock: TfrmStock;

implementation

{$R *.dfm}

end.
