object frmStaff: TfrmStaff
  Left = 0
  Top = 0
  Caption = 'Staff'
  ClientHeight = 713
  ClientWidth = 1047
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object gplStaff: TGridPanel
    Left = 0
    Top = 0
    Width = 1047
    Height = 713
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
        Control = dbgStaff
        Row = 0
      end
      item
        Column = 1
        Control = dbnStaff
        Row = 0
      end
      item
        Column = 2
        Control = edtAddress
        Row = 0
      end
      item
        Column = 3
        Control = edtCellNum
        Row = 0
      end
      item
        Column = 4
        Control = edtEmail
        Row = 0
      end
      item
        Column = 5
        Control = edtEnterName
        Row = 0
      end
      item
        Column = 6
        Control = edtPassEnter
        Row = 0
      end
      item
        Column = 7
        Control = edtSearchName
        Row = 0
      end
      item
        Column = 8
        Control = edtWage
        Row = 0
      end
      item
        Column = 9
        Control = pnlAddStaff
        Row = 0
      end
      item
        Column = 0
        Control = pnlManagerBtn
        Row = 1
      end
      item
        Column = 1
        Control = pnlRemMAnager
        Row = 1
      end
      item
        Column = 2
        Control = pnlRemStaffBtn
        Row = 1
      end
      item
        Column = 3
        Control = pnlSearchBtn
        Row = 1
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
    ExplicitWidth = 1041
    ExplicitHeight = 704
    DesignSize = (
      1047
      713)
    object dbgStaff: TDBGrid
      Left = 1
      Top = 1
      Width = 320
      Height = 120
      Anchors = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object dbnStaff: TDBNavigator
      Left = 105
      Top = 24
      Width = 240
      Height = 25
      Anchors = []
      TabOrder = 1
    end
    object edtAddress: TEdit
      Left = 210
      Top = 25
      Width = 121
      Height = 23
      Anchors = []
      TabOrder = 2
      Text = 'Enter Address'
    end
    object edtCellNum: TEdit
      Left = 314
      Top = 25
      Width = 121
      Height = 23
      Anchors = []
      TabOrder = 3
      Text = 'Enter Cell Number'
    end
    object edtEmail: TEdit
      Left = 419
      Top = 25
      Width = 121
      Height = 23
      Anchors = []
      TabOrder = 4
      Text = 'Enter E-mail'
    end
    object edtEnterName: TEdit
      Left = 523
      Top = 25
      Width = 121
      Height = 23
      Anchors = []
      TabOrder = 5
      Text = 'Enter Name'
    end
    object edtPassEnter: TEdit
      Left = 628
      Top = 25
      Width = 121
      Height = 23
      Anchors = []
      TabOrder = 6
      Text = 'Enter Password'
    end
    object edtSearchName: TEdit
      Left = 732
      Top = 25
      Width = 121
      Height = 23
      Anchors = []
      TabOrder = 7
      Text = 'Enter Name'
    end
    object edtWage: TEdit
      Left = 837
      Top = 25
      Width = 121
      Height = 23
      Anchors = []
      TabOrder = 8
      Text = 'Enter Wage'
    end
    object pnlAddStaff: TPanel
      Left = 941
      Top = 16
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Add Staff Member'
      TabOrder = 9
      ExplicitLeft = 862
    end
    object pnlManagerBtn: TPanel
      Left = 1
      Top = 87
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Make Manager'
      TabOrder = 10
    end
    object pnlRemMAnager: TPanel
      Left = 105
      Top = 87
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Remove Manager'
      TabOrder = 11
    end
    object pnlRemStaffBtn: TPanel
      Left = 210
      Top = 87
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Remove Staff'
      TabOrder = 12
    end
    object pnlSearchBtn: TPanel
      Left = 314
      Top = 87
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Search'
      TabOrder = 13
    end
  end
end
