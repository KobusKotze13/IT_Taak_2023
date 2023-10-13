unit Stock_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TfrmStock = class(TForm)
    gplStock: TGridPanel;
    dbgStock: TDBGrid;
    dbnStock: TDBNavigator;
    edtSearchProductName: TEdit;
    pnlAddProductBtn: TPanel;
    pnlBackToPOSBtn: TPanel;
    pnlRemStockBtn: TPanel;
    pnlSearchBtn: TPanel;
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
