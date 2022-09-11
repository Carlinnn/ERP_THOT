object ServiceCadastro: TServiceCadastro
  OldCreateOrder = False
  Height = 328
  Width = 713
  object QRY_Pessoas: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from pessoas where pes_codigo = :codigo')
    Left = 32
    Top = 8
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_PessoasPES_CODIGO: TIntegerField
      FieldName = 'PES_CODIGO'
      Origin = 'PES_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_PessoasPES_RAZAO: TStringField
      FieldName = 'PES_RAZAO'
      Origin = 'PES_RAZAO'
      Size = 100
    end
    object QRY_PessoasPES_FANTASIA: TStringField
      FieldName = 'PES_FANTASIA'
      Origin = 'PES_FANTASIA'
      Size = 100
    end
    object QRY_PessoasPES_TELEFONE: TStringField
      FieldName = 'PES_TELEFONE'
      Origin = 'PES_TELEFONE'
      Size = 50
    end
    object QRY_PessoasPES_CNPJCPF: TStringField
      FieldName = 'PES_CNPJCPF'
      Origin = 'PES_CNPJCPF'
      Size = 50
    end
    object QRY_PessoasPES_IERG: TStringField
      FieldName = 'PES_IERG'
      Origin = 'PES_IERG'
      Size = 50
    end
    object QRY_PessoasPES_OBSERVACAO: TStringField
      FieldName = 'PES_OBSERVACAO'
      Origin = 'PES_OBSERVACAO'
      Size = 200
    end
    object QRY_PessoasPES_TIPOPESSOA: TIntegerField
      FieldName = 'PES_TIPOPESSOA'
      Origin = 'PES_TIPOPESSOA'
    end
  end
  object QRY_Enderecos: TFDQuery
    Connection = ServiceConexao.FDConn
    SQL.Strings = (
      'select * from endereco where end_codigo = :codigo')
    Left = 32
    Top = 72
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QRY_EnderecosEND_CODIGO: TIntegerField
      FieldName = 'END_CODIGO'
      Origin = 'END_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRY_EnderecosEND_PESSOA: TIntegerField
      FieldName = 'END_PESSOA'
      Origin = 'END_PESSOA'
    end
    object QRY_EnderecosEND_CEP: TStringField
      FieldName = 'END_CEP'
      Origin = 'END_CEP'
    end
    object QRY_EnderecosEND_CIDADE: TStringField
      FieldName = 'END_CIDADE'
      Origin = 'END_CIDADE'
      Size = 100
    end
    object QRY_EnderecosEND_ENDERECO: TStringField
      FieldName = 'END_ENDERECO'
      Origin = 'END_ENDERECO'
      Size = 100
    end
    object QRY_EnderecosEND_BAIRRO: TStringField
      FieldName = 'END_BAIRRO'
      Origin = 'END_BAIRRO'
      Size = 100
    end
    object QRY_EnderecosEND_OBSERVACAO: TStringField
      FieldName = 'END_OBSERVACAO'
      Origin = 'END_OBSERVACAO'
      Size = 100
    end
    object QRY_EnderecosEND_NUMERO: TStringField
      FieldName = 'END_NUMERO'
      Origin = 'END_NUMERO'
    end
  end
end
