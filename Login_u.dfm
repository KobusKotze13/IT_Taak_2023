object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 693
  ClientWidth = 1025
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnShow = FormShow
  TextHeight = 15
  object gplLogin: TGridPanel
    Left = 0
    Top = 0
    Width = 1025
    Height = 693
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
    ParentCtl3D = False
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
    TabOrder = 0
    StyleElements = [seFont, seClient]
    ExplicitWidth = 1019
    ExplicitHeight = 684
    DesignSize = (
      1025
      693)
    object lblTitle: TLabel
      Left = 364
      Top = 174
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
      Left = 406
      Top = 464
      Width = 212
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 0
      Text = 'Enter Password'
    end
    object edtUserName: TEdit
      Left = 408
      Top = 378
      Width = 209
      Height = 23
      Anchors = [akLeft, akRight]
      TabOrder = 1
      Text = 'Enter User Name'
    end
    object pnlLoginbtn: TPanel
      Left = 414
      Top = 560
      Width = 197
      Height = 46
      Anchors = [akBottom]
      Caption = 'Log In'
      TabOrder = 2
      OnClick = pnlLoginbtnClick
    end
    object pnlSignUpBtn: TPanel
      Left = 414
      Top = 626
      Width = 197
      Height = 45
      Anchors = [akLeft, akRight]
      Caption = 'Sign Up'
      TabOrder = 3
    end
  end
end
