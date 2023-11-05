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
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object gplStock: TGridPanel
    Left = 0
    Top = 0
    Width = 1055
    Height = 710
    Align = alClient
    ColumnCollection = <
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        ColumnSpan = 10
        Control = dbgStock
        Row = 0
        RowSpan = 3
      end
      item
        Column = 1
        ColumnSpan = 2
        Control = edtSearchProductName
        Row = 4
      end
      item
        Column = 1
        ColumnSpan = 2
        Control = pnlAddProductBtn
        Row = 6
      end
      item
        Column = 7
        Control = pnlBackToPOSBtn
        Row = 8
      end
      item
        Column = 1
        ColumnSpan = 2
        Control = pnlRemStockBtn
        Row = 7
      end
      item
        Column = 1
        ColumnSpan = 2
        Control = pnlSearchBtn
        Row = 5
      end
      item
        Column = 1
        ColumnSpan = 2
        Control = lblProductSearch
        Row = 3
      end>
    RowCollection = <
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end>
    TabOrder = 0
    ExplicitWidth = 1049
    ExplicitHeight = 701
    DesignSize = (
      1055
      710)
    object dbgStock: TDBGrid
      Left = 1
      Top = 1
      Width = 1053
      Height = 212
      Align = alClient
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object edtSearchProductName: TEdit
      Left = 106
      Top = 308
      Width = 210
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 1
    end
    object pnlAddProductBtn: TPanel
      Left = 119
      Top = 441
      Width = 185
      Height = 41
      Anchors = [akLeft, akRight]
      Caption = 'Add Stock'
      TabOrder = 2
      OnClick = pnlAddProductBtnClick
    end
    object pnlBackToPOSBtn: TPanel
      Left = 738
      Top = 582
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Back to POS'
      TabOrder = 3
      OnClick = pnlBackToPOSBtnClick
    end
    object pnlRemStockBtn: TPanel
      Left = 119
      Top = 511
      Width = 185
      Height = 41
      Anchors = [akLeft, akRight]
      Caption = 'Remove Stock'
      TabOrder = 4
      OnClick = pnlRemStockBtnClick
    end
    object pnlSearchBtn: TPanel
      Left = 119
      Top = 370
      Width = 185
      Height = 41
      Anchors = [akLeft, akRight]
      Caption = 'Search'
      TabOrder = 5
      OnClick = pnlSearchBtnClick
    end
    object lblProductSearch: TLabel
      Left = 125
      Top = 236
      Width = 172
      Height = 25
      Anchors = []
      Caption = 'Enter Product Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 139
    end
  end
end
