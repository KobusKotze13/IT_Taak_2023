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
        Column = 2
        ColumnSpan = 2
        Control = edtSearchName
        Row = 5
      end
      item
        Column = 3
        ColumnSpan = 2
        Control = pnlAddStaff
        Row = 6
      end
      item
        Column = 3
        ColumnSpan = 2
        Control = pnlManagerBtn
        Row = 7
      end
      item
        Column = 1
        ColumnSpan = 2
        Control = pnlRemStaffBtn
        Row = 7
      end
      item
        Column = 1
        ColumnSpan = 2
        Control = pnlSearchBtn
        Row = 6
      end
      item
        Column = 7
        Control = pnlBackToPOSBtn
        Row = 8
      end
      item
        Column = 2
        ColumnSpan = 2
        Control = lblSearchStaff
        Row = 4
      end
      item
        Column = 1
        ColumnSpan = 2
        Control = pnlEditStaff
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
      ReadOnly = True
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
    object edtSearchName: TEdit
      Left = 220
      Top = 380
      Width = 188
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 1
    end
    object pnlAddStaff: TPanel
      Left = 326
      Top = 443
      Width = 185
      Height = 41
      Anchors = [akLeft, akRight]
      Caption = 'Add Staff Member'
      TabOrder = 2
      OnClick = pnlAddStaffClick
    end
    object pnlManagerBtn: TPanel
      Left = 326
      Top = 514
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Change Manager Status'
      TabOrder = 3
      OnClick = pnlManagerBtnClick
    end
    object pnlRemStaffBtn: TPanel
      Left = 117
      Top = 514
      Width = 185
      Height = 41
      Anchors = []
      Caption = 'Remove Staff'
      TabOrder = 4
      OnClick = pnlRemStaffBtnClick
    end
    object pnlSearchBtn: TPanel
      Left = 117
      Top = 443
      Width = 185
      Height = 41
      Anchors = [akLeft, akRight]
      Caption = 'Search'
      TabOrder = 5
      OnClick = pnlSearchBtnClick
    end
    object pnlBackToPOSBtn: TPanel
      Left = 732
      Top = 585
      Width = 185
      Height = 41
      Anchors = [akLeft, akRight]
      Caption = 'Back to POS '
      TabOrder = 6
      OnClick = pnlBackToPOSBtnClick
    end
    object lblSearchStaff: TLabel
      Left = 264
      Top = 331
      Width = 100
      Height = 25
      Anchors = [akBottom]
      Caption = 'Enter Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 255
    end
    object pnlEditStaff: TPanel
      Left = 117
      Top = 585
      Width = 185
      Height = 41
      Anchors = [akLeft, akRight]
      Caption = 'Edit Staff Details'
      TabOrder = 7
      OnClick = pnlEditStaffClick
    end
  end
end
