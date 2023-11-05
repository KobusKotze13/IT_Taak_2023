unit POS_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, clsStaff_u;

type
  TfrmPOS = class(TForm)
    gplPOS: TGridPanel;
    cmbExtra1: TComboBox;
    cmbExtra2: TComboBox;
    cmbExtra3: TComboBox;
    cmbMeat: TComboBox;
    cmbVeg: TComboBox;
    pnlAddOrderBtn: TPanel;
    pnlFinalOrder: TPanel;
    pnlLogout: TPanel;
    pnlManageStaffBtn: TPanel;
    pnlManageStockBtn: TPanel;
    redOrder: TRichEdit;
    cmbPap: TComboBox;
    lblExtra: TLabel;
    lblVeg: TLabel;
    lblMeat: TLabel;
    lblPap: TLabel;
    pnlTotal: TPanel;
    procedure pnlLogoutClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnlManageStaffBtnClick(Sender: TObject);
    procedure pnlManageStockBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlAddOrderBtnClick(Sender: TObject);
    procedure DisplayItem;
    procedure SavePriceAndItem;
    procedure pnlFinalOrderClick(Sender: TObject);
      private
    { Private declarations }
  var
    OrderItems : array[0..5] of string;
    OrderItemPrice : array[0..5] of integer;
    OrderDishTotals : array of integer;
    DishNumber : integer;
    OrderTotal : integer;
    TotalDish : integer;

  public
    { Public declarations }
  end;

var
  frmPOS: TfrmPOS;

implementation

uses
Login_u, Staff_u, Stock_u;

{$R *.dfm}



procedure TfrmPOS.DisplayItem;
var
i : integer;
begin
redOrder.Lines.Add('Dish '+ IntToStr(DishNumber + 1));
redOrder.Lines.Add('');
redOrder.Lines.Add('Pap: ' + OrderItems[0]+ #9 + FloatToStrF(OrderItemPrice[0],ffCurrency,15,2));
if cmbMeat.ItemIndex = 0 then
  begin
  end
else
  begin
    redOrder.Lines.Add('Meat: ' + OrderItems[1] + #9 + FloatToStrF(OrderItemPrice[1],ffCurrency,15,2));
  end;

if  cmbVeg.ItemIndex = 0 then
  begin
  end
else
  begin
    redOrder.Lines.Add('Veg: ' + OrderItems[2]+ #9 + FloatToStrF(OrderItemPrice[2],ffCurrency,15,2));
  end;

if cmbExtra1.ItemIndex = 0 then
  begin
  end
else
  begin
    redOrder.Lines.Add('Extra: ' + OrderItems[3]+ #9 + FloatToStrF(OrderItemPrice[3],ffCurrency,15,2));
  end;

if cmbExtra2.ItemIndex = 0 then
  begin
  end
else
  begin
    redOrder.Lines.Add('Extra: ' + OrderItems[4]+ #9 + FloatToStrF(OrderItemPrice[4],ffCurrency,15,2));
  end;

if cmbExtra3.ItemIndex = 0 then
  begin
  end
else
  begin
    redOrder.Lines.Add('Extra: ' + OrderItems[5]+ #9 + FloatToStrF(OrderItemPrice[5],ffCurrency,15,2));
  end;

redOrder.Lines.Add('');


OrderTotal := 0;
for i := 0 to Length(OrderDishTotals) -1 do
  begin
    OrderTotal := OrderTotal + OrderDishTotals[i];
  end;

pnlTotal.Caption := 'Total: ' + FloatToStrF(OrderTotal,ffCurrency,15,2);

inc(Dishnumber);
SetLength(OrderDishTotals, Length(OrderDishTotals) + 1);
end;



procedure TfrmPOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmLogin.Show;
end;

procedure TfrmPOS.FormShow(Sender: TObject);
begin
WindowState := TWindowState.wsMaximized;
if  frmLogin.StaffUser.Get_ManagerStatus = True then
  begin
    pnlManageStaffBtn.Visible := True;
    pnlManageStockBtn.Caption := 'Edit Stock';
  end
else
  begin
    pnlManageStaffBtn.Visible := False;
    pnlManageStockBtn.Caption := 'View Stock';
  end;

redOrder.Clear;
DishNumber := 0;
SetLength(OrderDishTotals, 1);
OrderDishTotals[0] := 0;
redOrder.Paragraph.TabCount := 1;
redOrder.Paragraph.tab[0] := 500;
OrderTotal := 0;
end;

procedure TfrmPOS.pnlAddOrderBtnClick(Sender: TObject);
begin
SavePriceAndItem;
DisplayItem;
end;

procedure TfrmPOS.pnlFinalOrderClick(Sender: TObject);
var
Reciept : textfile;
begin
AssignFile(Reciept,'Reciept.txt');
Rewrite(Reciept);
Writeln(Reciept,redOrder.text);
CloseFile(Reciept);
end;

procedure TfrmPOS.pnlLogoutClick(Sender: TObject);
begin
frmLogin.Show;
frmPOS.Close;
end;

procedure TfrmPOS.pnlManageStaffBtnClick(Sender: TObject);
begin
frmStaff.Show;
frmStaff.Close;
frmStaff.Show;
frmPOS.Close;
end;

procedure TfrmPOS.pnlManageStockBtnClick(Sender: TObject);
begin
frmStock.Show;
frmStock.Close;
frmStock.Show;
frmPOS.Close;
end;

procedure TfrmPOS.SavePriceAndItem;
var
i : integer;
begin
OrderItems[0] := cmbPap.text;
OrderItemPrice[0] := 20;

OrderItems[1] := cmbMeat.text;
  if cmbMeat.ItemIndex = 0 then
    begin
      OrderItemPrice[1] := 0;
    end
  else
    begin
      OrderItemPrice[1] := 20;
    end;


OrderItems[2] := cmbVeg.text;
  if cmbVeg.ItemIndex = 0 then
    begin
      OrderItemPrice[2] := 0;
    end
  else
    begin
      OrderItemPrice[2] := 7;
    end;

OrderItems[3] := cmbExtra1.text;
  case cmbExtra1.ItemIndex of
    0 : OrderItemPrice[3] := 0;
    1..6 : OrderItemPrice[3] := 3;
    7..19 : OrderItemPrice[3] := 7;
    20..30: OrderItemPrice[3] := 20;
  end;

OrderItems[4] := cmbExtra2.text;
  case cmbExtra2.ItemIndex of
    0 : OrderItemPrice[4] := 0;
    1..6 : OrderItemPrice[4] := 3;
    7..19 : OrderItemPrice[4] := 7;
    20..30: OrderItemPrice[4] := 20;
  end;

OrderItems[5] := cmbExtra3.text;
  case cmbExtra3.ItemIndex of
    0 : OrderItemPrice[5] := 0;
    1..6 : OrderItemPrice[5] := 3;
    7..19 : OrderItemPrice[5] := 7;
    20..30: OrderItemPrice[5] := 20;
  end;

TotalDish := 0;

for i := 0 to 5 do
  begin
    TotalDish := TotalDish + OrderItemPrice[i];
  end;

OrderDishTotals[Dishnumber] := TotalDish;

end;

end.
