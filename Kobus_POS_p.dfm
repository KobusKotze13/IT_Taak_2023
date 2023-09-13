object frmMain: TfrmMain
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight, akBottom]
  ClientHeight = 644
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  OnCreate = FormCreate
  TextHeight = 15
  object pgcMain: TPageControl
    Left = 0
    Top = 0
    Width = 1024
    Height = 644
    ActivePage = tbsManageStaff
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 950
    ExplicitHeight = 613
    object tbsLogin: TTabSheet
      Caption = 'Login'
    end
    object tbsPOS: TTabSheet
      Caption = 'POS'
      ImageIndex = 1
    end
    object tbsStock: TTabSheet
      Caption = 'Stock'
      ImageIndex = 2
    end
    object tbsManageStaff: TTabSheet
      Caption = 'Staff'
      ImageIndex = 3
      object pnlStaffBackground: TPanel
        Left = 0
        Top = 0
        Width = 1016
        Height = 614
        Align = alClient
        Color = 855830
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 200
        ExplicitTop = 96
        ExplicitWidth = 185
        ExplicitHeight = 41
      end
    end
  end
end
