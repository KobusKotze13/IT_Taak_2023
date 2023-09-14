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
    ExplicitLeft = 426
    ExplicitTop = 312
    ExplicitWidth = 185
    ExplicitHeight = 41
    DesignSize = (
      1025
      692)
    object pnlLodinBtn: TPanel
      Left = 426
      Top = 552
      Width = 185
      Height = 41
      Anchors = [akBottom]
      Caption = 'Login'
      TabOrder = 0
      OnClick = pnlLodinBtnClick
    end
    object pnlSignUp: TPanel
      Left = 426
      Top = 616
      Width = 185
      Height = 41
      Anchors = [akBottom]
      Caption = 'Sign Up'
      TabOrder = 1
      OnClick = pnlLodinBtnClick
    end
  end
end
