object frmStock: TfrmStock
  Left = 0
  Top = 0
  Caption = 'Stock'
  ClientHeight = 710
  ClientWidth = 1055
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlStockBackground: TPanel
    Left = 0
    Top = 0
    Width = 1055
    Height = 710
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1049
    ExplicitHeight = 701
    object dbgStaff: TDBGrid
      Left = 16
      Top = 24
      Width = 1009
      Height = 272
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object dbnStaff: TDBNavigator
      Left = 785
      Top = 302
      Width = 240
      Height = 25
      TabOrder = 1
    end
    object edtSearchName: TEdit
      Left = 32
      Top = 368
      Width = 185
      Height = 23
      TabOrder = 2
      Text = 'Enter Name'
    end
    object pnlAddStaff: TPanel
      Left = 592
      Top = 368
      Width = 185
      Height = 41
      Caption = 'Add Staff Member'
      TabOrder = 3
    end
    object pnlRemStaffBtn: TPanel
      Left = 32
      Top = 488
      Width = 185
      Height = 41
      Caption = 'Remove Staff'
      TabOrder = 4
    end
    object pnlSearchBtn: TPanel
      Left = 32
      Top = 416
      Width = 185
      Height = 41
      Caption = 'Search'
      TabOrder = 5
    end
    object Panel1: TPanel
      Left = 592
      Top = 424
      Width = 185
      Height = 41
      Caption = 'Add Staff Member'
      TabOrder = 6
    end
  end
end
