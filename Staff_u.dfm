object frmStaff: TfrmStaff
  Left = 0
  Top = 0
  Caption = 'Staff'
  ClientHeight = 713
  ClientWidth = 1047
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlStaffBackground: TPanel
    Left = 0
    Top = 0
    Width = 1047
    Height = 713
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1041
    ExplicitHeight = 704
    object dbgStaff: TDBGrid
      Left = 16
      Top = 24
      Width = 1009
      Height = 272
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
    end
    object dbnStaff: TDBNavigator
      Left = 785
      Top = 302
      Width = 240
      Height = 25
      TabOrder = 1
    end
    object pnlSearchBtn: TPanel
      Left = 32
      Top = 416
      Width = 185
      Height = 41
      Caption = 'Search'
      TabOrder = 2
    end
    object edtSearchName: TEdit
      Left = 32
      Top = 368
      Width = 185
      Height = 23
      TabOrder = 3
      Text = 'Enter Name'
    end
    object pnlRemStaffBtn: TPanel
      Left = 32
      Top = 488
      Width = 185
      Height = 41
      Caption = 'Remove Staff'
      TabOrder = 4
    end
    object pnlManagerBtn: TPanel
      Left = 32
      Top = 552
      Width = 185
      Height = 41
      Caption = 'Make Manager'
      TabOrder = 5
    end
    object edtEnterName: TEdit
      Left = 392
      Top = 368
      Width = 121
      Height = 23
      TabOrder = 6
      Text = 'Enter Name'
    end
    object edtPassEnter: TEdit
      Left = 392
      Top = 416
      Width = 121
      Height = 23
      TabOrder = 7
      Text = 'Enter Password'
    end
    object edtAddress: TEdit
      Left = 392
      Top = 464
      Width = 121
      Height = 23
      TabOrder = 8
      Text = 'Enter Address'
    end
    object edtCellNum: TEdit
      Left = 392
      Top = 512
      Width = 121
      Height = 23
      TabOrder = 9
      Text = 'Enter Cell Number'
    end
    object edtEmail: TEdit
      Left = 392
      Top = 562
      Width = 121
      Height = 23
      TabOrder = 10
      Text = 'Enter E-mail'
    end
    object edtWage: TEdit
      Left = 392
      Top = 610
      Width = 121
      Height = 23
      TabOrder = 11
      Text = 'Enter Wage'
    end
    object pnlAddStaff: TPanel
      Left = 592
      Top = 368
      Width = 185
      Height = 41
      Caption = 'Add Staff Member'
      TabOrder = 12
    end
    object pnlRemMAnager: TPanel
      Left = 32
      Top = 624
      Width = 185
      Height = 41
      Caption = 'Remove Manager'
      TabOrder = 13
    end
  end
end
