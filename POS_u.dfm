object frmPOS: TfrmPOS
  Left = 0
  Top = 0
  Caption = 'POS'
  ClientHeight = 649
  ClientWidth = 946
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object pnlPOSBackground: TPanel
    Left = 0
    Top = 0
    Width = 946
    Height = 649
    Align = alClient
    TabOrder = 0
    DesignSize = (
      946
      649)
    object cmbPapSelect: TComboBox
      Left = 40
      Top = 120
      Width = 145
      Height = 23
      Anchors = [akLeft]
      TabOrder = 0
      Text = 'Select Pap'
    end
    object cmbMeatSelect: TComboBox
      Left = 40
      Top = 176
      Width = 145
      Height = 23
      Anchors = [akLeft]
      TabOrder = 1
      Text = 'Select Meat'
    end
    object cmbVegSelect: TComboBox
      Left = 40
      Top = 232
      Width = 145
      Height = 23
      Anchors = [akLeft]
      TabOrder = 2
      Text = 'Select Veg'
    end
    object cmbExtra1: TComboBox
      Left = 40
      Top = 288
      Width = 145
      Height = 23
      Anchors = [akLeft]
      TabOrder = 3
      Text = 'Extra 1'
    end
    object cmbExtra2: TComboBox
      Left = 40
      Top = 344
      Width = 145
      Height = 23
      TabOrder = 4
      Text = 'Extra 2'
    end
    object cmbExtra3: TComboBox
      Left = 40
      Top = 400
      Width = 145
      Height = 23
      TabOrder = 5
      Text = 'Extra 3'
    end
    object redOrder: TRichEdit
      Left = 456
      Top = 55
      Width = 481
      Height = 267
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        'redOrder')
      ParentFont = False
      TabOrder = 6
    end
    object pnlAddOrderBtn: TPanel
      Left = 16
      Top = 464
      Width = 185
      Height = 41
      Caption = 'Add To Order'
      TabOrder = 7
    end
    object pnlFinalOrder: TPanel
      Left = 616
      Top = 464
      Width = 185
      Height = 41
      Caption = 'Finalise Order'
      TabOrder = 8
    end
    object pnlManagaeStaffBtn: TPanel
      Left = 600
      Top = 8
      Width = 89
      Height = 41
      Caption = 'Manage Staff'
      TabOrder = 9
    end
    object pnlManageStockBtn: TPanel
      Left = 712
      Top = 8
      Width = 89
      Height = 41
      Caption = 'Manage Stock'
      TabOrder = 10
    end
  end
end
