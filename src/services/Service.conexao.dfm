object ServiceConexao: TServiceConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 372
  Width = 582
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=D:\dev\ERPDelphi\BancoDeDados\DADOS.FDB'
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
end
