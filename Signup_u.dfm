object frmSignup: TfrmSignup
  Left = 0
  Top = 0
  Caption = 'Sign Up'
  ClientHeight = 680
  ClientWidth = 1007
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  TextHeight = 15
  object gplSignup: TGridPanel
    Left = 0
    Top = 0
    Width = 1007
    Height = 680
    Align = alClient
    ColumnCollection = <
      item
        Value = 33.333333333333340000
      end
      item
        Value = 33.333333333333340000
      end
      item
        Value = 33.333333333333310000
      end>
    ControlCollection = <
      item
        Column = 1
        Control = edtNewStaffPassword
        Row = 6
      end
      item
        Column = 1
        Control = edtNewStaffName
        Row = 4
      end
      item
        Column = 1
        Control = lblSignup
        Row = 1
        RowSpan = 2
      end
      item
        Column = 1
        Control = Panel1
        Row = 13
        RowSpan = 2
      end
      item
        Column = 1
        Control = edtNewStaffNUmber
        Row = 8
      end
      item
        Column = 1
        Control = edtNewStaffEmail
        Row = 10
      end
      item
        Column = 1
        Control = lblNewStaffEmail
        Row = 9
      end
      item
        Column = 1
        Control = lblNewStaffNumber
        Row = 7
      end
      item
        Column = 1
        Control = lblNewStaffPassword
        Row = 5
      end
      item
        Column = 1
        Control = lblNewStaffName
        Row = 3
      end
      item
        Column = 1
        Control = edtNewStaffAddress
        Row = 12
      end
      item
        Column = 1
        Control = lblNewStaffAddress
        Row = 11
      end>
    RowCollection = <
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 12.000000000000000000
      end
      item
        Value = 5.000000000000000000
      end
      item
        Value = 5.000000000000000000
      end
      item
        Value = 5.000000000000000000
      end
      item
        Value = 5.000000000000000000
      end
      item
        Value = 5.000000000000000000
      end
      item
        Value = 5.000000000000000000
      end
      item
        Value = 5.000000000000000000
      end
      item
        Value = 5.000000000000000000
      end
      item
        Value = 5.000000000000000000
      end
      item
        Value = 5.000000000000000000
      end
      item
        Value = 8.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end>
    TabOrder = 0
    ExplicitWidth = 1001
    ExplicitHeight = 671
    DesignSize = (
      1007
      680)
    object edtNewStaffPassword: TEdit
      Left = 408
      Top = 325
      Width = 190
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 0
    end
    object edtNewStaffName: TEdit
      Left = 408
      Top = 257
      Width = 190
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 1
    end
    object lblSignup: TLabel
      Left = 402
      Top = 105
      Width = 202
      Height = 77
      Anchors = [akLeft, akRight]
      Caption = 'Sign Up'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -58
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitTop = 97
    end
    object Panel1: TPanel
      Left = 411
      Top = 597
      Width = 185
      Height = 41
      Anchors = [akLeft, akRight]
      Caption = 'Sign Up'
      TabOrder = 2
    end
    object edtNewStaffNUmber: TEdit
      Left = 408
      Top = 392
      Width = 190
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 3
    end
    object edtNewStaffEmail: TEdit
      Left = 408
      Top = 460
      Width = 190
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 4
    end
    object lblNewStaffEmail: TLabel
      Left = 453
      Top = 425
      Width = 101
      Height = 25
      Anchors = []
      Caption = 'Enter Email '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 398
    end
    object lblNewStaffNumber: TLabel
      Left = 444
      Top = 358
      Width = 119
      Height = 25
      Anchors = []
      Caption = 'Enter Number'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 421
    end
    object lblNewStaffPassword: TLabel
      Left = 438
      Top = 290
      Width = 130
      Height = 25
      Anchors = []
      Caption = 'Enter Password'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 476
    end
    object lblNewStaffName: TLabel
      Left = 395
      Top = 222
      Width = 217
      Height = 25
      Anchors = []
      Caption = 'Enter Name and Surname'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 405
    end
    object edtNewStaffAddress: TEdit
      Left = 408
      Top = 528
      Width = 190
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 5
    end
    object lblNewStaffAddress: TLabel
      Left = 444
      Top = 493
      Width = 118
      Height = 25
      Anchors = []
      Caption = 'Enter Address'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 398
    end
  end
end
