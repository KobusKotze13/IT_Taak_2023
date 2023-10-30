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
        Control = cmbMeatSelect
        Row = 4
      end
      item
        Column = 1
        ColumnSpan = 2
        Control = cmbVegSelect
        Row = 5
      end
      item
        Column = 1
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
        Control = Label1
        Row = 8
      end
      item
        Column = 0
        Control = Label2
        Row = 7
      end
      item
        Column = 0
        Control = Label3
        Row = 6
      end
      item
        Column = 0
        Control = Label4
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
    ExplicitLeft = -8
    ExplicitTop = 8
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
    end
    object cmbExtra2: TComboBox
      Left = 118
      Top = 491
      Width = 171
      Height = 23
      Style = csDropDownList
      Anchors = [akLeft, akRight]
      TabOrder = 1
    end
    object cmbExtra3: TComboBox
      Left = 118
      Top = 558
      Width = 171
      Height = 23
      Style = csDropDownList
      Anchors = [akLeft, akRight]
      TabOrder = 2
    end
    object cmbMeatSelect: TComboBox
      Left = 118
      Top = 291
      Width = 171
      Height = 23
      Style = csDropDownList
      Anchors = [akLeft, akRight]
      TabOrder = 3
    end
    object cmbVegSelect: TComboBox
      Left = 118
      Top = 357
      Width = 171
      Height = 23
      Style = csDropDownList
      Anchors = [akLeft, akRight]
      TabOrder = 4
    end
    object pnlAddOrderBtn: TPanel
      Left = 118
      Top = 616
      Width = 170
      Height = 41
      Anchors = []
      Caption = 'Add To Order'
      TabOrder = 5
      ExplicitLeft = 17
    end
    object pnlFinalOrder: TPanel
      Left = 647
      Top = 573
      Width = 225
      Height = 59
      Anchors = []
      Caption = 'Finalise Order'
      TabOrder = 6
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
    end
    object Label1: TLabel
      Left = 34
      Top = 562
      Width = 34
      Height = 15
      Anchors = []
      Caption = 'Label1'
      ExplicitLeft = 16
      ExplicitTop = 24
    end
    object Label2: TLabel
      Left = 34
      Top = 495
      Width = 34
      Height = 15
      Anchors = []
      Caption = 'Label1'
      ExplicitLeft = 50
      ExplicitTop = 27
    end
    object Label3: TLabel
      Left = 34
      Top = 428
      Width = 34
      Height = 15
      Anchors = []
      Caption = 'Label1'
      ExplicitLeft = 50
      ExplicitTop = 27
    end
    object Label4: TLabel
      Left = 24
      Top = 356
      Width = 55
      Height = 25
      Anchors = []
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 26
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
      Left = 5
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
  end
end
