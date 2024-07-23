object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 646
  ClientWidth = 1027
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
    Width = 1027
    Height = 646
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
        Control = lblAgentUsername
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
    ExplicitWidth = 999
    ExplicitHeight = 581
    DesignSize = (
      1027
      646)
    object lblTitle: TLabel
      Left = 400
      Top = 162
      Width = 226
      Height = 77
      Anchors = [akTop]
      Caption = 'Logbook'
      Color = 9665101
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -58
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 351
    end
    object edtPass: TEdit
      Left = 407
      Top = 452
      Width = 212
      Height = 23
      Anchors = [akLeft, akRight]
      PasswordChar = '*'
      TabOrder = 0
      ExplicitTop = 405
    end
    object edtUserName: TEdit
      Left = 409
      Top = 371
      Width = 209
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 1
      ExplicitTop = 333
    end
    object pnlLoginbtn: TPanel
      Left = 415
      Top = 518
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
      ExplicitLeft = 401
      ExplicitTop = 462
    end
    object lblAgentUsername: TLabel
      Left = 417
      Top = 330
      Width = 192
      Height = 25
      Anchors = []
      Caption = 'Enter Agent Username'
      Color = 9665357
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 436
      ExplicitTop = 299
    end
    object lblEnterPassword: TLabel
      Left = 448
      Top = 411
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
