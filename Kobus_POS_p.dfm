object frmMain: TfrmMain
  Left = 0
  Top = 0
  ClientHeight = 622
  ClientWidth = 956
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pgcMain: TPageControl
    Left = 0
    Top = 0
    Width = 956
    Height = 622
    ActivePage = tbsManageStaff
    Align = alClient
    TabOrder = 0
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
    end
  end
end
