object dmItems: TdmItems
  Height = 480
  Width = 640
  object SQLItems: TUniQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'select * from ionvd_campanhas_flex_items')
    Left = 280
    Top = 216
  end
  object dsItems: TUniDataSource
    DataSet = SQLItems
    Left = 392
    Top = 216
  end
end
