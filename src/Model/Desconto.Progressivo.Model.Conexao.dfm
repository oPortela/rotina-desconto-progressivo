object dmConexao: TdmConexao
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object SQLConexao: TUniConnection
    ProviderName = 'Oracle'
    Server = 'GOIAS'
    Left = 280
    Top = 120
  end
end
