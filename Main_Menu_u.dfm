object frmMainMenu: TfrmMainMenu
  Left = 0
  Top = 0
  ClientHeight = 594
  ClientWidth = 992
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object gplStaff: TGridPanel
    Left = 0
    Top = 0
    Width = 992
    Height = 594
    Align = alClient
    ColumnCollection = <
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 7
        Control = pnlBackToPOSBtn
        Row = 8
      end
      item
        Column = 0
        ColumnSpan = 10
        Control = scbHouses
        Row = 0
        RowSpan = 8
      end>
    RowCollection = <
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end
      item
        Value = 10.000000000000000000
      end>
    TabOrder = 0
    ExplicitLeft = -55
    ExplicitTop = -119
    ExplicitWidth = 1047
    ExplicitHeight = 713
    DesignSize = (
      992
      594)
    object pnlBackToPOSBtn: TPanel
      Left = 694
      Top = 484
      Width = 185
      Height = 41
      Anchors = [akLeft, akRight]
      Caption = 'Back to POS '
      TabOrder = 0
      ExplicitTop = 585
    end
    object scbHouses: TScrollBox
      Left = 9
      Top = 6
      Width = 974
      Height = 464
      Anchors = []
      TabOrder = 1
      Visible = False
      ExplicitTop = 0
      DesignSize = (
        970
        460)
      object pnlManagerBtn: TPanel
        Left = 34
        Top = 378
        Width = 185
        Height = 41
        Anchors = []
        Caption = 'Change Manager Status'
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 241
        Top = 378
        Width = 185
        Height = 41
        Anchors = []
        Caption = 'Change Manager Status'
        TabOrder = 1
      end
      object Panel2: TPanel
        Left = 448
        Top = 378
        Width = 185
        Height = 41
        Anchors = []
        Caption = 'Change Manager Status'
        TabOrder = 2
      end
      object Panel3: TPanel
        Left = 674
        Top = 378
        Width = 185
        Height = 41
        Anchors = []
        Caption = 'Change Manager Status'
        TabOrder = 3
      end
    end
  end
end
