object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 133
  ClientWidth = 502
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 56
    Top = 64
    Width = 114
    Height = 15
    Caption = #1052#1110#1090#1082#1072'-'#1087#1086#1074#1110#1076#1086#1084#1083#1077#1085#1085#1103
  end
  object BitBtn1: TBitBtn
    Left = 392
    Top = 54
    Width = 75
    Height = 25
    Kind = bkClose
    NumGlyphs = 2
    TabOrder = 0
  end
  object Button1: TButton
    Left = 32
    Top = 100
    Width = 130
    Height = 25
    Caption = 'GO TStringField'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 100
    Width = 145
    Height = 25
    Caption = 'GO TIntegerField'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 335
    Top = 100
    Width = 140
    Height = 25
    Caption = 'GO TExtendedField'
    TabOrder = 3
    OnClick = Button3Click
  end
end
