object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 671
  ClientWidth = 1035
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
    Width = 1035
    Height = 671
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
        Row = 3
      end
      item
        Column = 1
        Control = edtUserName
        Row = 2
      end
      item
        Column = 1
        Control = pnlLoginbtn
        Row = 4
      end
      item
        Column = 1
        Control = pnlSignUpBtn
        Row = 5
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
        Value = 12.500000000000000000
      end
      item
        Value = 12.500000000000000000
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
    ExplicitTop = 64
    ExplicitWidth = 996
    ExplicitHeight = 642
    DesignSize = (
      1035
      671)
    object lblTitle: TLabel
      Left = 369
      Top = 168
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
      Left = 411
      Top = 449
      Width = 212
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 0
      Text = 'Enter Password'
      ExplicitTop = 429
    end
    object edtUserName: TEdit
      Left = 413
      Top = 366
      Width = 209
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 1
      Text = 'Enter User Name'
      ExplicitTop = 349
    end
    object pnlLoginbtn: TPanel
      Left = 419
      Top = 540
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
      ExplicitLeft = 399
      ExplicitTop = 515
    end
    object pnlSignUpBtn: TPanel
      Left = 419
      Top = 605
      Width = 197
      Height = 45
      Anchors = [akLeft, akRight]
      Caption = 'Sign Up'
      Color = 6049102
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 3
      ExplicitTop = 578
    end
  end
end
