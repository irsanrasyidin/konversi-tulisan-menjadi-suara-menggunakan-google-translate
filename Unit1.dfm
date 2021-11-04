object Form1: TForm1
  Left = 607
  Top = 237
  Width = 476
  Height = 540
  Caption = 'Form1'
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
    Width = 460
    Height = 501
    Align = alClient
    TabOrder = 0
    object lbl1: TLabel
      Left = 128
      Top = 40
      Width = 206
      Height = 25
      Caption = 'Selamat Datang Kawan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 104
      Top = 368
      Width = 172
      Height = 13
      Caption = 'Apakah kawan sudah punya akun ?'
    end
    object lbl3: TLabel
      Left = 288
      Top = 368
      Width = 72
      Height = 13
      Caption = 'Registrasi disini'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = lbl3Click
    end
    object lbl4: TLabel
      Left = 104
      Top = 136
      Width = 17
      Height = 24
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 104
      Top = 184
      Width = 82
      Height = 24
      Caption = 'Password'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edt1: TEdit
      Left = 224
      Top = 136
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btn1: TButton
      Left = 104
      Top = 256
      Width = 75
      Height = 25
      Caption = 'EXIT'
      TabOrder = 3
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 272
      Top = 256
      Width = 75
      Height = 25
      Caption = 'LOGIN'
      TabOrder = 2
      OnClick = btn2Click
    end
    object medt1: TMaskEdit
      Left = 224
      Top = 184
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
  end
end
