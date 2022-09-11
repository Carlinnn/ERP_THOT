object ServiceConexao: TServiceConexao
  OldCreateOrder = False
  Height = 372
  Width = 582
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=D:\projetos\ERP_THOT\BancoDeDados\DADOS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=ISO8859_1'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 128
    Top = 56
  end
  object FDCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 192
    Top = 56
  end
  object FDDriverLink: TFDPhysFBDriverLink
    Left = 248
    Top = 56
  end
  object QRY_Filial: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from filial where fil_codigo = :codigo')
    Left = 312
    Top = 56
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object QRY_FilialFIL_CODIGO: TIntegerField
      FieldName = 'FIL_CODIGO'
      Origin = 'FIL_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_FilialFIL_RAZAO: TStringField
      FieldName = 'FIL_RAZAO'
      Origin = 'FIL_RAZAO'
      Size = 100
    end
    object QRY_FilialFIL_FANTASIA: TStringField
      FieldName = 'FIL_FANTASIA'
      Origin = 'FIL_FANTASIA'
      Size = 100
    end
    object QRY_FilialFIL_CNPJ: TStringField
      FieldName = 'FIL_CNPJ'
      Origin = 'FIL_CNPJ'
      Size = 18
    end
    object QRY_FilialFIL_TELEFONE: TStringField
      FieldName = 'FIL_TELEFONE'
      Origin = 'FIL_TELEFONE'
      Size = 16
    end
  end
  object qrPessoas: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'select * from pessoas where PES_CODIGO = :codigo')
    Left = 64
    Top = 184
    ParamData = <
      item
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    object qrPessoasPES_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'PES_CODIGO'
      Origin = 'PES_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qrPessoasPES_RAZAO: TStringField
      FieldName = 'PES_RAZAO'
      Origin = 'PES_RAZAO'
      Size = 100
    end
    object qrPessoasPES_FANTASIA: TStringField
      FieldName = 'PES_FANTASIA'
      Origin = 'PES_FANTASIA'
      Size = 100
    end
    object qrPessoasPES_TELEFONE: TStringField
      FieldName = 'PES_TELEFONE'
      Origin = 'PES_TELEFONE'
      Size = 50
    end
    object qrPessoasPES_CNPJCPF: TStringField
      FieldName = 'PES_CNPJCPF'
      Origin = 'PES_CNPJCPF'
      Size = 50
    end
    object qrPessoasPES_IERG: TStringField
      FieldName = 'PES_IERG'
      Origin = 'PES_IERG'
      Size = 50
    end
    object qrPessoasPES_OBSERVACAO: TStringField
      FieldName = 'PES_OBSERVACAO'
      Origin = 'PES_OBSERVACAO'
      Size = 200
    end
    object qrPessoasPES_TIPOPESSOA: TIntegerField
      FieldName = 'PES_TIPOPESSOA'
      Origin = 'PES_TIPOPESSOA'
    end
  end
  object qrPessoasPesquisa: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT'
      '  P.PES_CODIGO,'
      '  P.PES_RAZAO,'
      '  P.PES_FANTASIA,'
      '  P.PES_TELEFONE,'
      '  P.PES_CNPJCPF,'
      '  P.PES_IERG,'
      '  P.PES_OBSERVACAO,'
      '  P.PES_TIPOPESSOA,'
      '  T.NOME AS TIPO'
      'FROM'
      '  PESSOAS P'
      '  JOIN ('
      '    SELECT'
      '      1 AS ID,'
      '      '#39'CLIENTES'#39' AS  NOME'
      '    FROM'
      '      RDB$DATABASE'
      '    UNION'
      '    SELECT'
      '      2 AS ID,'
      '      '#39'FORNECEDORES'#39' AS  NOME'
      '    FROM'
      '      RDB$DATABASE'
      '    UNION'
      '    SELECT'
      '      3 AS ID,'
      '      '#39'FUNCION'#193'RIO'#39' AS  NOME'
      '    FROM'
      '      RDB$DATABASE'
      '  ) T ON P.PES_TIPOPESSOA = T.ID'
      'WHERE'
      '  CAST(P.PES_CODIGO AS VARCHAR(10)) LIKE :PESQUISA OR'
      '  P.PES_RAZAO LIKE :PESQUISA OR'
      '  P.PES_FANTASIA LIKE :PESQUISA OR'
      '  P.PES_CNPJCPF LIKE :PESQUISA OR'
      '  P.PES_TELEFONE LIKE :PESQUISA'
      'ORDER BY'
      '  P.PES_RAZAO')
    Left = 64
    Top = 256
    ParamData = <
      item
        Name = 'PESQUISA'
        DataType = ftString
        ParamType = ptInput
        Size = 10
        Value = Null
      end>
    object qrPessoasPesquisaPES_CODIGO: TIntegerField
      FieldName = 'PES_CODIGO'
      Origin = 'PES_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrPessoasPesquisaPES_RAZAO: TStringField
      FieldName = 'PES_RAZAO'
      Origin = 'PES_RAZAO'
      Size = 100
    end
    object qrPessoasPesquisaPES_FANTASIA: TStringField
      FieldName = 'PES_FANTASIA'
      Origin = 'PES_FANTASIA'
      Size = 100
    end
    object qrPessoasPesquisaPES_TELEFONE: TStringField
      FieldName = 'PES_TELEFONE'
      Origin = 'PES_TELEFONE'
      Size = 50
    end
    object qrPessoasPesquisaPES_CNPJCPF: TStringField
      FieldName = 'PES_CNPJCPF'
      Origin = 'PES_CNPJCPF'
      Size = 50
    end
    object qrPessoasPesquisaPES_IERG: TStringField
      FieldName = 'PES_IERG'
      Origin = 'PES_IERG'
      Size = 50
    end
    object qrPessoasPesquisaPES_OBSERVACAO: TStringField
      FieldName = 'PES_OBSERVACAO'
      Origin = 'PES_OBSERVACAO'
      Size = 200
    end
    object qrPessoasPesquisaPES_TIPOPESSOA: TIntegerField
      FieldName = 'PES_TIPOPESSOA'
      Origin = 'PES_TIPOPESSOA'
    end
    object qrPessoasPesquisaTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 12
    end
  end
  object qrPessoaTipo: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT'
      '  1 AS ID,'
      '  '#39'CLIENTES'#39' AS  NOME'
      'FROM'
      '  RDB$DATABASE'
      'UNION'
      'SELECT'
      '  2 AS ID,'
      '  '#39'FORNECEDORES'#39' AS  NOME'
      'FROM'
      '  RDB$DATABASE'
      'UNION'
      'SELECT'
      '  3 AS ID,'
      '  '#39'FUNCION'#193'RIO'#39' AS  NOME'
      'FROM'
      '  RDB$DATABASE')
    Left = 184
    Top = 200
    object qrPessoaTipoID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object qrPessoaTipoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 12
    end
  end
end
