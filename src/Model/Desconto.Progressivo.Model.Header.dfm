object dmFlexHeader: TdmFlexHeader
  Height = 480
  Width = 640
  object SQLHeader: TUniQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'select * from ionvd_campanhas_flex_header')
    Left = 280
    Top = 216
  end
  object dsHeader: TUniDataSource
    DataSet = SQLHeader
    Left = 392
    Top = 216
  end
end
