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
        Control = edtPass
        Row = 6
      end
      item
        Column = 1
        Control = edtUserName
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
        Control = edtManagerUsername
        Row = 8
      end
      item
        Column = 1
        Control = edtManagerPass
        Row = 10
      end
      item
        Column = 1
        Control = lblManagerPassword
        Row = 9
      end
      item
        Column = 1
        Control = lblManagerUserID
        Row = 7
      end
      item
        Column = 1
        Control = lblPasswordNewStaff
        Row = 5
      end
      item
        Column = 1
        Control = lblNameNewStaff
        Row = 3
      end
      item
        Column = 1
        Control = Edit1
        Row = 12
      end
      item
        Column = 1
        Control = Label1
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
    ExplicitTop = -8
    DesignSize = (
      1007
      680)
    object edtPass: TEdit
      Left = 408
      Top = 325
      Width = 190
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 0
      Text = 'Enter Password'
    end
    object edtUserName: TEdit
      Left = 408
      Top = 257
      Width = 190
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 1
      Text = 'Enter User Name'
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
      ExplicitTop = 102
    end
    object Panel1: TPanel
      Left = 411
      Top = 597
      Width = 185
      Height = 41
      Anchors = [akLeft, akRight]
      Caption = 'Sign Up'
      TabOrder = 2
      ExplicitTop = 523
    end
    object edtManagerUsername: TEdit
      Left = 408
      Top = 392
      Width = 190
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 3
      Text = 'Enter Manager User Name'
    end
    object edtManagerPass: TEdit
      Left = 408
      Top = 460
      Width = 190
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 4
      Text = 'Enter Manager Password'
    end
    object lblManagerPassword: TLabel
      Left = 398
      Top = 425
      Width = 211
      Height = 25
      Anchors = []
      Caption = 'Enter Manager Password'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 415
    end
    object lblManagerUserID: TLabel
      Left = 421
      Top = 358
      Width = 165
      Height = 25
      Anchors = []
      Caption = 'Enter a Manager ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 476
    end
    object lblPasswordNewStaff: TLabel
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
    object lblNameNewStaff: TLabel
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
    object Edit1: TEdit
      Left = 408
      Top = 528
      Width = 190
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 5
      Text = 'Enter Manager Password'
    end
    object Label1: TLabel
      Left = 398
      Top = 493
      Width = 211
      Height = 25
      Anchors = []
      Caption = 'Enter Manager Password'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitLeft = 167
      ExplicitTop = 27
    end
  end
end
