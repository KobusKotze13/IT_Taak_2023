object frmPOS: TfrmPOS
  Left = 0
  Top = 0
  Caption = 'POS'
  ClientHeight = 671
  ClientWidth = 1014
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clHighlight
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 15
  object gplPOS: TGridPanel
    Left = 0
    Top = 0
    Width = 1014
    Height = 671
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
        Column = 1
        ColumnSpan = 2
        Control = cmbExtra1
        Row = 6
      end
      item
        Column = 1
        ColumnSpan = 2
        Control = cmbExtra2
        Row = 7
      end
      item
        Column = 1
        ColumnSpan = 2
        Control = cmbExtra3
        Row = 8
      end
      item
        Column = 1
        ColumnSpan = 2
        Control = cmbMeat
        Row = 4
      end
      item
        Column = 1
        ColumnSpan = 2
        Control = cmbVeg
        Row = 5
      end
      item
        Column = 1
        ColumnSpan = 2
        Control = pnlAddOrderBtn
        Row = 9
      end
      item
        Column = 7
        ColumnSpan = 3
        Control = pnlFinalOrder
        Row = 8
        RowSpan = 2
      end
      item
        Column = 8
        ColumnSpan = 2
        Control = pnlLogout
        Row = 0
        RowSpan = 2
      end
      item
        Column = 4
        ColumnSpan = 2
        Control = pnlManageStaffBtn
        Row = 0
        RowSpan = 2
      end
      item
        Column = 6
        ColumnSpan = 2
        Control = pnlManageStockBtn
        Row = 0
        RowSpan = 2
      end
      item
        Column = 4
        ColumnSpan = 6
        Control = redOrder
        Row = 2
        RowSpan = 6
      end
      item
        Column = 1
        ColumnSpan = 2
        Control = cmbPap
        Row = 3
      end
      item
        Column = 0
        Control = lblExtra
        Row = 6
      end
      item
        Column = 0
        Control = lblVeg
        Row = 5
      end
      item
        Column = 0
        Control = lblMeat
        Row = 4
      end
      item
        Column = 0
        Control = lblPap
        Row = 3
      end
      item
        Column = 4
        ColumnSpan = 2
        Control = pnlTotal
        Row = 8
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
      end
      item
        SizeStyle = ssAuto
      end>
    TabOrder = 0
    ExplicitWidth = 1008
    ExplicitHeight = 662
    DesignSize = (
      1014
      671)
    object cmbExtra1: TComboBox
      Left = 118
      Top = 424
      Width = 171
      Height = 23
      Style = csDropDownList
      Anchors = [akLeft, akRight]
      TabOrder = 0
      Items.Strings = (
        'Smoor'
        'Chakalaka'
        'Curry'
        'Stock'
        'Gravy'
        'Butter'
        'Sugar'
        'Milk'
        'Sour Milk'
        'Fat'
        'Syrup'
        'Beef'
        'Pork'
        'Lamb'
        'Chicken'
        'Goat'
        'Livers'
        'Affal'
        'Boerewors'
        'Walkie Talkies'
        'Bacon'
        'Morogo'
        'Cabbage'
        'Corn'
        'Spinich'
        'Pumkin'
        'Beans'
        'Onion'
        'Chilli')
    end
    object cmbExtra2: TComboBox
      Left = 118
      Top = 491
      Width = 171
      Height = 23
      Style = csDropDownList
      Anchors = [akLeft, akRight]
      TabOrder = 1
      Items.Strings = (
        'Smoor'
        'Chakalaka'
        'Curry'
        'Stock'
        'Gravy'
        'Butter'
        'Sugar'
        'Milk'
        'Sour Milk'
        'Fat'
        'Syrup'
        'Beef'
        'Pork'
        'Lamb'
        'Chicken'
        'Goat'
        'Livers'
        'Affal'
        'Boerewors'
        'Walkie Talkies'
        'Bacon'
        'Morogo'
        'Cabbage'
        'Corn'
        'Spinich'
        'Pumkin'
        'Beans'
        'Onion'
        'Chilli')
    end
    object cmbExtra3: TComboBox
      Left = 118
      Top = 558
      Width = 171
      Height = 23
      Style = csDropDownList
      Anchors = [akLeft, akRight]
      TabOrder = 2
      Items.Strings = (
        'Smoor'
        'Chakalaka'
        'Curry'
        'Stock'
        'Gravy'
        'Butter'
        'Sugar'
        'Milk'
        'Sour Milk'
        'Fat'
        'Syrup'
        'Beef'
        'Pork'
        'Lamb'
        'Chicken'
        'Goat'
        'Livers'
        'Affal'
        'Boerewors'
        'Walkie Talkies'
        'Bacon'
        'Morogo'
        'Cabbage'
        'Corn'
        'Spinich'
        'Pumkin'
        'Beans'
        'Onion'
        'Chilli')
    end
    object cmbMeat: TComboBox
      Left = 118
      Top = 291
      Width = 171
      Height = 23
      Style = csDropDownList
      Anchors = [akLeft, akRight]
      TabOrder = 3
      Items.Strings = (
        'Beef'
        'Pork'
        'Lamb'
        'Chicken'
        'Goat'
        'Livers'
        'Affal'
        'Boerewors'
        'Walkie Talkies'
        'Bacon')
    end
    object cmbVeg: TComboBox
      Left = 118
      Top = 357
      Width = 171
      Height = 23
      Style = csDropDownList
      Anchors = [akLeft, akRight]
      TabOrder = 4
      Items.Strings = (
        'Morogo'
        'Cabbage'
        'Corn'
        'Spinich'
        'Pumkin'
        'Beans'
        'Onion'
        'Chilli')
      ExplicitTop = 361
    end
    object pnlAddOrderBtn: TPanel
      Left = 118
      Top = 616
      Width = 170
      Height = 41
      Anchors = []
      Caption = 'Add To Order'
      TabOrder = 5
      OnClick = pnlAddOrderBtnClick
    end
    object pnlFinalOrder: TPanel
      Left = 748
      Top = 573
      Width = 225
      Height = 59
      Anchors = []
      Caption = 'Finalise Order'
      TabOrder = 6
      ExplicitLeft = 647
    end
    object pnlLogout: TPanel
      Left = 819
      Top = 47
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Log Out'
      TabOrder = 7
      OnClick = pnlLogoutClick
    end
    object pnlManageStaffBtn: TPanel
      Left = 414
      Top = 47
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Manage Staff'
      TabOrder = 8
      OnClick = pnlManageStaffBtnClick
    end
    object pnlManageStockBtn: TPanel
      Left = 617
      Top = 47
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Manage Stock'
      TabOrder = 9
      OnClick = pnlManageStockBtnClick
    end
    object redOrder: TRichEdit
      Left = 406
      Top = 135
      Width = 607
      Height = 401
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        'redOrder')
      ParentFont = False
      TabOrder = 10
    end
    object cmbPap: TComboBox
      Left = 117
      Top = 224
      Width = 172
      Height = 23
      Style = csDropDownList
      Anchors = [akLeft, akRight]
      TabOrder = 11
      Items.Strings = (
        'Krummel Pap'
        'Stywe Pap'
        'Drink Pap'
        'Slap Pap')
    end
    object lblExtra: TLabel
      Left = 1
      Top = 423
      Width = 108
      Height = 25
      Anchors = [akRight]
      Caption = 'Select Extras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 47
    end
    object lblVeg: TLabel
      Left = 9
      Top = 356
      Width = 93
      Height = 25
      Anchors = [akRight]
      Caption = 'Select Veg:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 24
    end
    object lblMeat: TLabel
      Left = 1
      Top = 290
      Width = 104
      Height = 25
      Anchors = [akRight]
      Caption = 'Select meat:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 24
    end
    object lblPap: TLabel
      Left = 9
      Top = 223
      Width = 93
      Height = 25
      Anchors = [akRight]
      Caption = 'Select Pap:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 7
    end
    object pnlTotal: TPanel
      Left = 414
      Top = 549
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Total: '
      TabOrder = 12
      OnClick = pnlAddOrderBtnClick
      ExplicitLeft = 1
      ExplicitTop = 14
    end
  end
end
