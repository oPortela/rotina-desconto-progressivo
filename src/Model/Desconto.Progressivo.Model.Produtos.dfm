object dmProdutos: TdmProdutos
  Height = 480
  Width = 640
  object dsProdutos: TUniDataSource
    DataSet = SQLProdutos
    Left = 280
    Top = 165
  end
  object SQLProdutos: TUniQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'SELECT * FROM PCPRODUT')
    Left = 168
    Top = 165
  end
end
