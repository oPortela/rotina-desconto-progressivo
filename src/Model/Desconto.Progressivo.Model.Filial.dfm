object dmFilial: TdmFilial
  Height = 480
  Width = 640
  object SQLFilial: TUniQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'select * from pcfilial')
    Left = 240
    Top = 200
  end
end
