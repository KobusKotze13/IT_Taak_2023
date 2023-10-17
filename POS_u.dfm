object frmPOS: TfrmPOS
  Left = 0
  Top = 0
  Caption = 'POS'
  ClientHeight = 671
  ClientWidth = 1014
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
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
        Column = 0
        ColumnSpan = 2
        Control = cmbExtra1
        Row = 6
      end
      item
        Column = 0
        ColumnSpan = 2
        Control = cmbExtra2
        Row = 7
      end
      item
        Column = 0
        ColumnSpan = 2
        Control = cmbExtra3
        Row = 8
      end
      item
        Column = 0
        ColumnSpan = 2
        Control = cmbMeatSelect
        Row = 4
      end
      item
        Column = 0
        ColumnSpan = 2
        Control = cmbPapSelect
        Row = 3
      end
      item
        Column = 0
        ColumnSpan = 2
        Control = cmbVegSelect
        Row = 5
      end
      item
        Column = 0
        ColumnSpan = 2
        Control = pnlAddOrderBtn
        Row = 9
      end
      item
        Column = 6
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
        Control = pnlManagaeStaffBtn
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
    DesignSize = (
      1014
      671)
    object cmbExtra1: TComboBox
      Left = 16
      Top = 424
      Width = 171
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 0
      Text = 'Extra 1'
    end
    object cmbExtra2: TComboBox
      Left = 16
      Top = 491
      Width = 171
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 1
      Text = 'Extra 2'
    end
    object cmbExtra3: TComboBox
      Left = 16
      Top = 558
      Width = 171
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 2
      Text = 'Extra 3'
    end
    object cmbMeatSelect: TComboBox
      Left = 16
      Top = 291
      Width = 171
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 3
      Text = 'Select Meat'
    end
    object cmbPapSelect: TComboBox
      Left = 16
      Top = 224
      Width = 171
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 4
      Text = 'Select Pap'
    end
    object cmbVegSelect: TComboBox
      Left = 16
      Top = 357
      Width = 171
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 5
      Text = 'Select Veg'
    end
    object pnlAddOrderBtn: TPanel
      Left = 17
      Top = 616
      Width = 170
      Height = 41
      Anchors = []
      Caption = 'Add To Order'
      TabOrder = 6
    end
    object pnlFinalOrder: TPanel
      Left = 647
      Top = 573
      Width = 225
      Height = 59
      Anchors = []
      Caption = 'Finalise Order'
      TabOrder = 7
    end
    object pnlLogout: TPanel
      Left = 819
      Top = 47
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Log Out'
      TabOrder = 8
      OnClick = pnlLogoutClick
    end
    object pnlManagaeStaffBtn: TPanel
      Left = 414
      Top = 47
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Manage Staff'
      TabOrder = 9
    end
    object pnlManageStockBtn: TPanel
      Left = 617
      Top = 47
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Manage Stock'
      TabOrder = 10
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
      TabOrder = 11
    end
  end
end
