object Form4: TForm4
  Left = 523
  Top = 174
  Width = 501
  Height = 540
  Caption = 'Form4'
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
    Width = 485
    Height = 501
    Align = alClient
    TabOrder = 0
    object lbl1: TLabel
      Left = 80
      Top = 24
      Width = 319
      Height = 25
      Caption = 'Selamat Datang Di Registrasi Kawan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 152
      Top = 64
      Width = 176
      Height = 20
      Caption = 'Semuanya Wajib Di isi ya'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 72
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
    object lbl4: TLabel
      Left = 72
      Top = 216
      Width = 50
      Height = 24
      Caption = 'Nama'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 72
      Top = 176
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
    object lbl6: TLabel
      Left = 312
      Top = 136
      Width = 10
      Height = 24
      Caption = '?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = lbl6Click
    end
    object lbl7: TLabel
      Left = 312
      Top = 176
      Width = 10
      Height = 24
      Caption = '?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = lbl7Click
    end
    object lbl8: TLabel
      Left = 312
      Top = 216
      Width = 10
      Height = 24
      Caption = '?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = lbl8Click
    end
    object lbl9: TLabel
      Left = 72
      Top = 256
      Width = 179
      Height = 20
      Caption = 'Apakah kawan bingung ?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl10: TLabel
      Left = 256
      Top = 256
      Width = 75
      Height = 20
      Caption = 'Click Disini'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMenuHighlight
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edt1: TEdit
      Left = 184
      Top = 136
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt2: TEdit
      Left = 184
      Top = 176
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edt3: TEdit
      Left = 184
      Top = 216
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object btn1: TButton
      Left = 72
      Top = 304
      Width = 75
      Height = 25
      Caption = 'Kembali'
      TabOrder = 3
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 256
      Top = 304
      Width = 75
      Height = 25
      Caption = 'Daftar'
      TabOrder = 4
      OnClick = btn2Click
    end
  end
end
