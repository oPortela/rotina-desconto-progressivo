object dmCampanhaItens: TdmCampanhaItens
  Height = 480
  Width = 640
  object dsCampanhaItens: TUniDataSource
    DataSet = SQLCampanhaItens
    Left = 280
    Top = 165
  end
  object SQLCampanhaItens: TUniQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'select * from pcdescontoi'
      '')
    Left = 168
    Top = 165
  end
end
