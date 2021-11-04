object Form3: TForm3
  Left = 633
  Top = 194
  Width = 526
  Height = 540
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 510
    Height = 501
    Align = alClient
    TabOrder = 0
    object lbl1: TLabel
      Left = 48
      Top = 16
      Width = 145
      Height = 25
      Caption = 'Selamat Datang '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 192
      Top = 16
      Width = 147
      Height = 25
      Caption = '---------------------'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btn1: TButton
      Left = 136
      Top = 280
      Width = 75
      Height = 25
      Caption = 'Suara'
      TabOrder = 2
      OnClick = btn1Click
    end
    object mmo2: TMemo
      Left = 48
      Top = 88
      Width = 337
      Height = 169
      ReadOnly = True
      TabOrder = 3
    end
    object btn2: TButton
      Left = 48
      Top = 280
      Width = 75
      Height = 25
      Caption = 'GO'
      TabOrder = 1
      OnClick = btn2Click
    end
    object edt1: TEdit
      Left = 48
      Top = 56
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btn3: TButton
      Left = 224
      Top = 280
      Width = 75
      Height = 25
      Caption = 'Rate'
      TabOrder = 4
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 312
      Top = 280
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 5
      OnClick = btn4Click
    end
  end
end
