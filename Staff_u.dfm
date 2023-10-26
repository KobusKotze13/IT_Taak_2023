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
  OnClose = FormClose
  OnShow = FormShow
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
        ColumnSpan = 10
        Control = dbgStaff
        Row = 0
        RowSpan = 4
      end
      item
        Column = 7
        ColumnSpan = 3
        Control = dbnStaff
        Row = 4
      end
      item
        Column = 4
        Control = edtAddress
        Row = 9
      end
      item
        Column = 4
        Control = edtCellNum
        Row = 8
      end
      item
        Column = 4
        Control = edtEmail
        Row = 7
      end
      item
        Column = 4
        Control = edtEnterName
        Row = 4
      end
      item
        Column = 4
        Control = edtPassEnter
        Row = 5
      end
      item
        Column = 0
        ColumnSpan = 2
        Control = edtSearchName
        Row = 5
      end
      item
        Column = 4
        Control = edtWage
        Row = 6
      end
      item
        Column = 6
        ColumnSpan = 2
        Control = pnlAddStaff
        Row = 5
      end
      item
        Column = 0
        ColumnSpan = 2
        Control = pnlManagerBtn
        Row = 8
      end
      item
        Column = 0
        ColumnSpan = 2
        Control = pnlRemMAnager
        Row = 9
      end
      item
        Column = 0
        ColumnSpan = 2
        Control = pnlRemStaffBtn
        Row = 7
      end
      item
        Column = 0
        ColumnSpan = 2
        Control = pnlSearchBtn
        Row = 6
      end
      item
        Column = 8
        Control = pnlBackToPOSBtn
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
      Width = 1045
      Height = 284
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Staff_ID'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Staff_Name'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Password'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cell_Number'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Email'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Address'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Wage'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Manager'
          Visible = True
        end>
    end
    object dbnStaff: TDBNavigator
      Left = 769
      Top = 285
      Width = 240
      Height = 25
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
    end
    object edtAddress: TEdit
      Left = 419
      Top = 665
      Width = 166
      Height = 23
      Anchors = []
      TabOrder = 2
      Text = 'Enter Address'
      ExplicitLeft = 417
      ExplicitTop = 656
    end
    object edtCellNum: TEdit
      Left = 419
      Top = 594
      Width = 166
      Height = 23
      Anchors = []
      TabOrder = 3
      Text = 'Enter Cell Number'
      ExplicitLeft = 417
      ExplicitTop = 586
    end
    object edtEmail: TEdit
      Left = 419
      Top = 523
      Width = 166
      Height = 23
      Anchors = []
      TabOrder = 4
      Text = 'Enter E-mail'
      ExplicitLeft = 417
      ExplicitTop = 516
    end
    object edtEnterName: TEdit
      Left = 419
      Top = 309
      Width = 166
      Height = 23
      Anchors = []
      TabOrder = 5
      Text = 'Enter Name'
      ExplicitLeft = 417
      ExplicitTop = 305
    end
    object edtPassEnter: TEdit
      Left = 419
      Top = 380
      Width = 166
      Height = 23
      Anchors = []
      TabOrder = 6
      Text = 'Enter Password'
      ExplicitLeft = 417
      ExplicitTop = 375
    end
    object edtSearchName: TEdit
      Left = 11
      Top = 380
      Width = 188
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 7
      Text = 'Enter Name'
      ExplicitTop = 375
    end
    object edtWage: TEdit
      Left = 419
      Top = 452
      Width = 166
      Height = 23
      Anchors = []
      TabOrder = 8
      Text = 'Enter Wage'
      ExplicitLeft = 417
      ExplicitTop = 445
    end
    object pnlAddStaff: TPanel
      Left = 640
      Top = 371
      Width = 185
      Height = 41
      Anchors = [akLeft, akRight]
      Caption = 'Add Staff Member'
      TabOrder = 9
      ExplicitTop = 366
    end
    object pnlManagerBtn: TPanel
      Left = 13
      Top = 585
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Make Manager'
      TabOrder = 10
      ExplicitLeft = 12
      ExplicitTop = 577
    end
    object pnlRemMAnager: TPanel
      Left = 13
      Top = 656
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Remove Manager'
      TabOrder = 11
      ExplicitLeft = 12
      ExplicitTop = 647
    end
    object pnlRemStaffBtn: TPanel
      Left = 13
      Top = 514
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Remove Staff'
      TabOrder = 12
      ExplicitLeft = 12
      ExplicitTop = 507
    end
    object pnlSearchBtn: TPanel
      Left = 13
      Top = 443
      Width = 185
      Height = 41
      Anchors = [akLeft, akRight]
      Caption = 'Search'
      TabOrder = 13
      ExplicitTop = 436
    end
    object pnlBackToPOSBtn: TPanel
      Left = 837
      Top = 585
      Width = 185
      Height = 41
      Anchors = [akLeft, akRight]
      Caption = 'Back to POS '
      TabOrder = 14
      OnClick = pnlBackToPOSBtnClick
      ExplicitTop = 577
    end
  end
end
