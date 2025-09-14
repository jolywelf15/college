object Form1: TForm1
  Left = 885
  Height = 497
  Top = 262
  Width = 533
  Caption = 'Калькулятор'
  ClientHeight = 497
  ClientWidth = 533
  DesignTimePPI = 120
  LCLVersion = '3.8.0.0'
  object Edit1: TEdit
    Left = 8
    Height = 28
    Top = 48
    Width = 400
    BidiMode = bdRightToLeft
    ParentBidiMode = False
    TabOrder = 0
  end
  object But1: TButton
    Left = 8
    Height = 31
    Top = 320
    Width = 94
    Caption = '1'
    TabOrder = 1
    OnClick = ClickBut
  end
  object But2: TButton
    Left = 120
    Height = 31
    Top = 320
    Width = 94
    Caption = '2'
    TabOrder = 2
    OnClick = ClickBut
  end
  object But3: TButton
    Left = 232
    Height = 31
    Top = 320
    Width = 94
    Caption = '3'
    TabOrder = 3
    OnClick = ClickBut
  end
  object But4: TButton
    Left = 8
    Height = 31
    Top = 280
    Width = 94
    Caption = '4'
    TabOrder = 4
    OnClick = ClickBut
  end
  object But5: TButton
    Left = 120
    Height = 31
    Top = 280
    Width = 94
    Caption = '5'
    TabOrder = 5
    OnClick = ClickBut
  end
  object But6: TButton
    Left = 232
    Height = 31
    Top = 280
    Width = 94
    Caption = '6'
    TabOrder = 6
    OnClick = ClickBut
  end
  object But7: TButton
    Left = 8
    Height = 31
    Top = 240
    Width = 94
    Caption = '7'
    TabOrder = 7
    OnClick = ClickBut
  end
  object But8: TButton
    Left = 120
    Height = 31
    Top = 240
    Width = 94
    Caption = '8'
    TabOrder = 8
    OnClick = ClickBut
  end
  object But9: TButton
    Left = 232
    Height = 31
    Top = 240
    Width = 94
    Caption = '9'
    TabOrder = 9
    OnClick = ClickBut
  end
  object But10: TButton
    Left = 336
    Height = 31
    Top = 320
    Width = 94
    Caption = '-'
    TabOrder = 10
    OnClick = ClickZnak
  end
  object But11: TButton
    Left = 336
    Height = 31
    Top = 280
    Width = 94
    Caption = '*'
    TabOrder = 11
    OnClick = ClickZnak
  end
  object But12: TButton
    Left = 336
    Height = 31
    Top = 240
    Width = 94
    Caption = '/'
    TabOrder = 12
    OnClick = ClickZnak
  end
  object But13: TButton
    Left = 8
    Height = 63
    Top = 354
    Width = 224
    Caption = '0'
    TabOrder = 13
    OnClick = ClickBut
  end
  object But14: TButton
    Left = 232
    Height = 31
    Top = 368
    Width = 94
    Caption = ','
    TabOrder = 14
    OnClick = ClickBut
  end
  object But15: TButton
    Left = 336
    Height = 31
    Top = 368
    Width = 94
    Caption = '+'
    TabOrder = 15
    OnClick = ClickZnak
  end
  object But16: TButton
    Left = 432
    Height = 102
    Top = 312
    Width = 94
    Caption = '='
    TabOrder = 16
    OnClick = But16Click
  end
  object But17: TButton
    Left = 432
    Height = 31
    Top = 280
    Width = 94
    Caption = '1/x'
    TabOrder = 17
    OnClick = But17Click
  end
  object But18: TButton
    Left = 432
    Height = 31
    Top = 240
    Width = 94
    Caption = 'x^2'
    TabOrder = 18
    OnClick = But18Click
  end
  object But19: TButton
    Left = 432
    Height = 31
    Top = 200
    Width = 94
    Caption = 'Кор'
    TabOrder = 19
    OnClick = But19Click
  end
  object But20: TButton
    Left = 328
    Height = 31
    Top = 200
    Width = 94
    Caption = 'c'
    TabOrder = 20
    OnClick = But20Click
  end
  object But21: TButton
    Left = 224
    Height = 31
    Top = 200
    Width = 94
    Caption = 'ce'
    TabOrder = 21
    OnClick = But21Click
  end
  object But22: TButton
    Left = 8
    Height = 80
    Top = 160
    Width = 206
    Caption = '<-'
    TabOrder = 22
    OnClick = But22Click
  end
end
