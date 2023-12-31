object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 617
  ClientWidth = 999
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  StyleName = 'Windows10 SlateGray'
  OnShow = FormShow
  TextHeight = 15
  object gplLogin: TGridPanel
    Left = 0
    Top = 0
    Width = 999
    Height = 617
    ParentCustomHint = False
    Align = alClient
    BiDiMode = bdLeftToRight
    Color = 9599053
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
        Control = lblTitle
        Row = 1
      end
      item
        Column = 1
        Control = edtPass
        Row = 5
      end
      item
        Column = 1
        Control = edtUserName
        Row = 3
      end
      item
        Column = 1
        Control = pnlLoginbtn
        Row = 6
      end
      item
        Column = 1
        Control = lblStaffID
        Row = 2
      end
      item
        Column = 1
        Control = lblEnterPassword
        Row = 4
      end>
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBiDiMode = False
    ParentBackground = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    RowCollection = <
      item
        Value = 25.000000000000000000
      end
      item
        Value = 25.000000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 6.250000000000000000
      end
      item
        Value = 12.500000000000000000
      end
      item
        Value = 12.500000000000000000
      end>
    ShowHint = False
    TabOrder = 0
    StyleElements = [seFont, seClient]
    StyleName = 'Windows'
    DesignSize = (
      999
      617)
    object lblTitle: TLabel
      Left = 351
      Top = 155
      Width = 297
      Height = 77
      Anchors = [akTop]
      Caption = 'Foodie POS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -58
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = 170
    end
    object edtPass: TEdit
      Left = 393
      Top = 431
      Width = 212
      Height = 23
      Anchors = [akLeft, akRight]
      PasswordChar = '*'
      TabOrder = 0
    end
    object edtUserName: TEdit
      Left = 395
      Top = 354
      Width = 209
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 1
    end
    object pnlLoginbtn: TPanel
      Left = 401
      Top = 493
      Width = 197
      Height = 46
      Anchors = [akBottom]
      BevelEdges = []
      Caption = 'Log In'
      Color = 6049102
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
      OnClick = pnlLoginbtnClick
    end
    object lblStaffID: TLabel
      Left = 442
      Top = 315
      Width = 115
      Height = 25
      Anchors = []
      Caption = 'Enter Staff ID'
      Color = 9665357
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 464
      ExplicitTop = 339
    end
    object lblEnterPassword: TLabel
      Left = 434
      Top = 392
      Width = 130
      Height = 25
      Anchors = []
      Caption = 'Enter Password'
      Color = 9665101
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 487
      ExplicitTop = 422
    end
  end
end
