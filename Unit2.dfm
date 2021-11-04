object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 392
  Width = 518
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from pelanggan')
    Params = <>
    Left = 88
    Top = 56
  end
  object con1: TZConnection
    UTF8StringsAsWideField = False
    PreprepareSQL = False
    Connected = True
    Port = 3306
    Database = 'ptu'
    User = 'root'
    Protocol = 'mysql'
    Left = 40
    Top = 56
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from review')
    Params = <>
    Left = 136
    Top = 56
  end
  object ds1: TDataSource
    DataSet = zqry2
    Left = 184
    Top = 56
  end
end
