object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 504
  ClientWidth = 410
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Выберете_фаил: TLabel
    Left = 8
    Top = 112
    Width = 82
    Height = 13
    Caption = #1042#1099#1073#1077#1088#1077#1090#1077'_'#1092#1072#1080#1083
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 248
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 2
  end
  object CheckBox2: TCheckBox
    Left = 24
    Top = 271
    Width = 97
    Height = 17
    Caption = 'CheckBox2'
    TabOrder = 3
  end
  object CheckBox4: TCheckBox
    Left = 24
    Top = 317
    Width = 97
    Height = 17
    Caption = 'CheckBox4'
    TabOrder = 5
  end
  object CheckBox5: TCheckBox
    Left = 24
    Top = 340
    Width = 97
    Height = 17
    Caption = 'CheckBox5'
    TabOrder = 6
  end
  object CheckBox3: TCheckBox
    Left = 24
    Top = 294
    Width = 97
    Height = 17
    Caption = 'CheckBox3'
    TabOrder = 4
  end
  object Button1: TButton
    Left = 272
    Top = 107
    Width = 75
    Height = 25
    Caption = #1054#1082
    TabOrder = 0
  end
  object DriveComboBox1: TDriveComboBox
    Left = 106
    Top = 112
    Width = 145
    Height = 19
    TabOrder = 1
  end
  object XMLTransform1: TXMLTransform
    Left = 16
  end
  object Documents: TXMLDocument
    FileName = 
      'H:\'#1055#1088#1072#1082#1090#1080#1082#1072'_'#1042#1085#1091#1082#1086#1074#1086'\'#1051#1086#1075#1080' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1072' AODB-FIDS\interface_adapter_' +
      '065_trace.log.1'
    Left = 88
    DOMVendorDesc = 'ADOM XML v4'
  end
  object AppAnalytics1: TAppAnalytics
    Active = False
    CacheSize = 500
    UpdateInterval = 600
    Options = [aoTrackStartup, aoTrackFormActivate, aoTrackExceptions]
    PrivacyMessage.Strings = (
      'Privacy Notice:'
      ''
      
        'This application anonymously tracks your usage and sends it to u' +
        's for analysis. We use this analysis to make the software work b' +
        'etter for you.'
      ''
      
        'This tracking is completely anonymous. No personally identifying' +
        ' information is tracked, and nothing about your usage can be tra' +
        'cked back to you.'
      ''
      'Thank you for helping us to improve this software.')
    Left = 160
  end
  object MainMenu1: TMainMenu
    Left = 224
    object a1: TMenuItem
      Caption = #1060#1072#1080#1083
      object N1: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
      end
      object N2: TMenuItem
        Caption = #1069#1082#1089#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1074' Exel'
      end
    end
    object N3: TMenuItem
      Caption = #1042#1099#1093#1086#1076
    end
  end
end
