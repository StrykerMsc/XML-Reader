object Form1: TForm1
  Left = 0
  Top = 0
  Width = 585
  Height = 418
  Align = alCustom
  AutoScroll = True
  AutoSize = True
  Caption = 'El proyecto de tres (alpha version 0.3.1)'
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  DockSite = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 39
    Width = 92
    Height = 13
    Align = alCustom
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1089#1090#1088#1086#1082
  end
  object Button1: TButton
    Left = 8
    Top = 0
    Width = 75
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 58
    Width = 545
    Height = 89
    Lines.Strings = (
      'Memo1')
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 1
    WordWrap = False
  end
  object Button2: TButton
    Left = 136
    Top = 0
    Width = 75
    Height = 25
    Caption = #1040#1085#1072#1083#1080#1079
    TabOrder = 2
    OnClick = Button2Click
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 185
    Width = 545
    Height = 120
    ColCount = 10
    DefaultColWidth = 128
    FixedCols = 0
    RowCount = 2
    FixedRows = 0
    GradientEndColor = clGray
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing, goTabs, goAlwaysShowEditor]
    TabOrder = 3
  end
  object Button3: TButton
    Left = 8
    Top = 326
    Width = 105
    Height = 25
    Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 280
    Top = 326
    Width = 89
    Height = 25
    Caption = #1048#1084#1087#1086#1088#1090' '#1080#1079' Excel'
    TabOrder = 5
    OnClick = Button4Click
  end
  object XMLDocument1: TXMLDocument
    Left = 256
  end
  object MainMenu1: TMainMenu
    Left = 312
    object File1: TMenuItem
      Caption = '&File'
      object FileExitItem: TMenuItem
        Action = FileExit
      end
    end
  end
  object OpenDialog1: TOpenDialog
    FileName = 'C:\Users\user-pc\Desktop\interface_adapter_065_trace.log.1'
    Left = 464
  end
  object ActionList1: TActionList
    Left = 392
    object FileExit: TAction
      Category = 'File'
      Caption = '&Exit'
      OnExecute = FileExitExecute
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 520
  end
end
