object dmCampanha: TdmCampanha
  Height = 480
  Width = 640
  object dsCampanha: TUniDataSource
    DataSet = SQLCampanha
    Left = 280
    Top = 165
  end
  object SQLCampanha: TUniQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'select * from pcdescontoc'
      '')
    Left = 176
    Top = 165
  end
end
