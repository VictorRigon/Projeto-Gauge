object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 571
  ClientWidth = 884
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object gauge1: TGauge
    Left = 144
    Top = 104
    Width = 577
    Height = 52
    Progress = 0
    ShowText = False
  end
  object Gauge2: TGauge
    Left = 720
    Top = 104
    Width = 55
    Height = 353
    Kind = gkVerticalBar
    Progress = 0
    ShowText = False
  end
  object Gauge3: TGauge
    Left = 144
    Top = 405
    Width = 577
    Height = 52
    Progress = 0
    ShowText = False
  end
  object Gauge4: TGauge
    Left = 96
    Top = 104
    Width = 55
    Height = 353
    Kind = gkVerticalBar
    Progress = 0
    ShowText = False
  end
  object btnSentidoHorario: TButton
    Left = 376
    Top = 208
    Width = 105
    Height = 25
    Caption = 'Sentido Hor'#225'rio'
    TabOrder = 0
    OnClick = btnSentidoHorarioClick
  end
  object btnAntihorario: TButton
    Left = 376
    Top = 256
    Width = 105
    Height = 25
    Caption = 'Sentido anti-hor'#225'rio'
    TabOrder = 1
    OnClick = btnAntihorarioClick
  end
  object btnLooping: TButton
    Left = 376
    Top = 296
    Width = 105
    Height = 25
    Caption = 'Looping'
    TabOrder = 2
    OnClick = btnLoopingClick
  end
  object edtvalor: TSpinEdit
    Left = 487
    Top = 298
    Width = 42
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
end
