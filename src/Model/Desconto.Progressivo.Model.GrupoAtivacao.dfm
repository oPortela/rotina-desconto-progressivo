object dmGrupoAtivacao: TdmGrupoAtivacao
  Height = 480
  Width = 640
  object SQLGrupoAtivacao: TUniQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'select * from ionvd_campanhas_flex_items')
    Left = 280
    Top = 216
  end
  object dsGrupoAtivacao: TUniDataSource
    DataSet = SQLGrupoAtivacao
    Left = 392
    Top = 216
  end
end
