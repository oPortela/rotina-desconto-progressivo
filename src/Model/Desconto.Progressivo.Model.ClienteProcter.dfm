object dmClientesProcter: TdmClientesProcter
  Height = 480
  Width = 640
  object SQLClientesProcter: TUniQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'SELECT '
      '    A.CODCLI,'
      '    A.CLIENTE,'
      '    A.CGCENT,'
      '    C.CODIGO,'
      '    C.DESCRICAO'
      ''
      'FROM PCCLIENT A'
      ''
      'INNER JOIN PCDESCONTORESTRICAO B ON A.CODCLI = B.CODIGON'
      'INNER JOIN PCDESCONTOC C ON B.CODIGO = C.CODIGO'
      ''
      'WHERE 1=1')
    Left = 232
    Top = 136
  end
  object dsClientesProcter: TUniDataSource
    DataSet = SQLClientesProcter
    Left = 368
    Top = 136
  end
end
