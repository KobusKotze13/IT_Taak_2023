object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 692
  ClientWidth = 1025
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object pnlLoginBackground: TPanel
    Left = 0
    Top = 0
    Width = 1025
    Height = 692
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 32
    ExplicitTop = 8
    DesignSize = (
      1025
      692)
    object lblTitle: TLabel
      Left = 359
      Top = 128
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
    end
    object pnlLodinBtn: TPanel
      Left = 420
      Top = 552
      Width = 185
      Height = 41
      Anchors = [akBottom]
      Caption = 'Login'
      TabOrder = 0
      OnClick = pnlLodinBtnClick
      ExplicitLeft = 417
      ExplicitTop = 543
    end
    object pnlSignUp: TPanel
      Left = 420
      Top = 616
      Width = 185
      Height = 41
      Anchors = [akBottom]
      Caption = 'Sign Up'
      TabOrder = 1
      OnClick = pnlLodinBtnClick
      ExplicitLeft = 417
      ExplicitTop = 607
    end
    object edtUserName: TEdit
      Left = 423
      Top = 272
      Width = 185
      Height = 23
      Anchors = [akTop]
      TabOrder = 2
      Text = 'Enter User Name'
    end
    object edtPass: TEdit
      Left = 423
      Top = 320
      Width = 185
      Height = 23
      Anchors = [akTop]
      TabOrder = 3
      Text = 'Enter Password'
    end
  end
end
