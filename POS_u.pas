unit POS_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

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
  private
    { Private declarations }
  var
    OrderItems : array[0..5] of string;
    OrderItemPrice : array[0..5] of integer;
    OrderDishTotal : array of integer;
    DishNumber : integer;
    OrderTotal : integer;

  public
    { Public declarations }
  end;

var
  frmPOS: TfrmPOS;

implementation

uses
Login_u, Staff_u, Stock_u;

{$R *.dfm}



procedure TfrmPOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmLogin.Show;
end;

procedure TfrmPOS.FormShow(Sender: TObject);
begin
WindowState := TWindowState.wsMaximized;
if NOT frmLogin.StaffUser.Get_ManagerStatus = True then
  begin
    pnlManageStaffBtn.Visible := False;
    pnlManageStockBtn.Caption := 'View Stock';
  end;

redOrder.Clear;
DishNumber := 0;
SetLength(OrderDishTotal, 1);
redOrder.Paragraph.TabCount := 1;
redOrder.Paragraph.tab[0] := 300;
OrderTotal := 0;
end;

procedure TfrmPOS.pnlAddOrderBtnClick(Sender: TObject);
var
i, j, TotalDish,k: Integer;
begin
  for i := 0 to 5 do
    begin
      if i = 0 then
        begin
          OrderItems[i] := cmbPap.text;
          OrderItemPrice[i] := 20;
        end;

      if i = 1 then
        begin
          OrderItems[i] := cmbMeat.text;
          if cmbMeat.ItemIndex = 10 then
            begin
              OrderItemPrice[i] := 0;
            end
          else
            begin
              OrderItemPrice[i] := 20;
            end;
        end;

      if i = 2 then
        begin
          OrderItems[i] := cmbVeg.text;
          if cmbVeg.ItemIndex = 8 then
            begin
              OrderItemPrice[i] := 0;
            end
          else
            begin
              OrderItemPrice[i] := 7;
            end;

        end;

      if i = 3 then
        begin
          OrderItems[i] := cmbExtra1.text;

          case cmbExtra1.ItemIndex of
            0..14 : OrderItemPrice[i] := 20;
            15..28 : OrderItemPrice[i] := 7;
            29..35 : OrderItemPrice[i] := 3;
            36 : OrderItemPrice[i] := 0;
          end;

        end;

      if i = 4 then
        begin
          OrderItems[i] := cmbExtra2.text;

          case cmbExtra1.ItemIndex of
            0..14 : OrderItemPrice[i] := 20;
            15..28 : OrderItemPrice[i] := 7;
            29..35 : OrderItemPrice[i] := 3;
            36 : OrderItemPrice[i] := 0;
          end;

        end;

      if i = 5 then
        begin
          OrderItems[i] := cmbExtra3.text;

          case cmbExtra1.ItemIndex of
            0..14 : OrderItemPrice[i] := 20;
            15..28 : OrderItemPrice[i] := 7;
            29..35 : OrderItemPrice[i] := 3;
            36 : OrderItemPrice[i] := 0;
          end;

        end;

    end;

TotalDish := 0;



for j := 0 to 5 do
  begin
    TotalDish := TotalDish + OrderItemPrice[j];
  end;

OrderDishTotal[Dishnumber] := TotalDish;

redOrder.Lines.Add('Dish '+ IntToStr(DishNumber));
redOrder.Lines.Add('');
redOrder.Lines.Add('Pap: ' + OrderItems[0]);
if NOT cmbMeat.ItemIndex = 10 then
  begin
    redOrder.Lines.Add('Meat: ' + OrderItems[1] + #9 + FloatToStrF(OrderItemPrice[1],ffCurrency,15,2));
  end;
if NOT cmbVeg.ItemIndex = 8 then
  begin
    redOrder.Lines.Add('Veg: ' + OrderItems[2]);
  end;
if NOT cmbExtra1.ItemIndex = 36 then
  begin
    redOrder.Lines.Add('Extra: ' + OrderItems[3]);
  end;
if NOT cmbExtra2.ItemIndex = 36 then
  begin
    redOrder.Lines.Add('Extra: ' + OrderItems[4]);
  end;
if NOT cmbExtra3.ItemIndex = 36 then
  begin
    redOrder.Lines.Add('Extra: ' + OrderItems[5]);
  end;

for k := 0 to Length(OrderDishTotal) do
  begin
    OrderTotal := OrderTotal + OrderDishTotal[k];
  end;
redOrder.Lines.Add('');

inc(Dishnumber);
SetLength(OrderDishTotal, Length(OrderDishTotal) + 1);
pnlTotal.Caption := 'Total: ' + FloatToStrF(OrderTotal,ffCurrency,15,2);
end;

procedure TfrmPOS.pnlLogoutClick(Sender: TObject);
begin
frmLogin.Show;
frmPOS.Close;
end;

procedure TfrmPOS.pnlManageStaffBtnClick(Sender: TObject);
begin
frmStaff.Show;
frmPOS.Close;
end;

procedure TfrmPOS.pnlManageStockBtnClick(Sender: TObject);
begin
frmStock.Show;
frmPOS.Close;
end;

end.
