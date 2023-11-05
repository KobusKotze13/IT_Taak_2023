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
    edtSearchProductName: TEdit;
    pnlAddProductBtn: TPanel;
    pnlBackToPOSBtn: TPanel;
    pnlRemStockBtn: TPanel;
    pnlSearchBtn: TPanel;
    lblProductSearch: TLabel;

    // Event handler for returning to the POS
    procedure pnlBackToPOSBtnClick(Sender: TObject);

    // Event handler for when the form is shown
    procedure FormShow(Sender: TObject);

    // Event handler for when the form is closed
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    // Event handler for searching a product
    procedure pnlSearchBtnClick(Sender: TObject);

    // Event handler for adding a product
    procedure pnlAddProductBtnClick(Sender: TObject);

    // Event handler for removing stock
    procedure pnlRemStockBtnClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStock: TfrmStock;

implementation

uses
  POS_u, Login_u;

{$R *.dfm}

// Event handler for when the form is closed
procedure TfrmStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmLogin.Show;
end;

// Event handler for when the form is shown
procedure TfrmStock.FormShow(Sender: TObject);
var
  i, j: Integer;
  Col: TColumn;
  FieldDef: TFieldDef;
begin
  WindowState := TWindowState.wsMaximized;
  frmLogin.connectdb;
  dbgStock.DataSource := dsrStock;

  if frmLogin.StaffUser.get_ManagerStatus = False then
  begin
    pnlAddProductBtn.Hide;
    pnlRemStockBtn.Hide;
  end;

  tblStock.FieldByName('Product_ID').DisplayWidth := 15;
  tblStock.FieldByName('Product_Name').DisplayWidth := 20;
  tblStock.FieldByName('Product_Type').DisplayWidth := 20;
  tblStock.FieldByName('Amount').DisplayWidth := 10;
  tblStock.FieldByName('Supplier_ID').DisplayWidth := 20;
  tblStock.FieldByName('Price_Buy').DisplayWidth := 10;
  tblStock.FieldByName('Price_Sell').DisplayWidth := 10;

  if frmLogin.StaffUser.Get_ManagerStatus = True then
  begin
    pnlAddProductBtn.Visible := True;
    pnlRemStockBtn.Visible := True;
    for i := 0 to 6 do
    begin
      dbgStock.Fields[i].Visible := True;
    end;
  end
  else
  begin
    pnlAddProductBtn.Visible := False;
    pnlRemStockBtn.Visible := False;
    for j := 6 downto 4 do
    begin
      dbgStock.Fields[j].Visible := False;
    end;
  end;
end;

// Event handler for adding a product
procedure TfrmStock.pnlAddProductBtnClick(Sender: TObject);
begin
  tblStock.Edit;
  try
    begin
      tblStock['Ammount_Left'] := tblStock['Ammount_Left'] +
        StrToInt(Inputbox('Increase stock', 'Enter the amount stock needs to be increased with', ''));
    end;
  Finally
    begin
      Showmessage('Please enter a valid Number');
    end;
  end;
  tblStock.Post;
end;

// Event handler for returning to the POS
procedure TfrmStock.pnlBackToPOSBtnClick(Sender: TObject);
begin
  frmPOS.Show;
  frmStock.Hide;
end;

// Event handler for removing stock
procedure TfrmStock.pnlRemStockBtnClick(Sender: TObject);
var
  Temp: String;
begin
  tblStock.Edit;
  Temp := Inputbox('Decrease stock', 'Enter the amount stock needs to be decreased with', '');
  if StrToInt(Temp) > tblStock['Ammount_Left'] then
  begin
    Showmessage('Number is too big');
    exit;
  end;

  try
    begin
      tblStock['Ammount_Left'] := tblStock['Ammount_Left'] - StrToInt(Temp);
    end;
  Finally
    begin
      Showmessage('Please enter a valid Number');
    end;
  end;
  tblStock.Post;
end;

// Event handler for searching a product
procedure TfrmStock.pnlSearchBtnClick(Sender: TObject);
begin
  tblStock.Locate('Product_Name', edtSearchProductName.Text, [loCaseInsensitive, loPartialKey]);
end;

end.

