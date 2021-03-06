object DM_Principal: TDM_Principal
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 233
  Width = 396
  object IBDatabase1: TIBDatabase
    DatabaseName = 'E:\was\bd\BASEP.FDB'
    Params.Strings = (
      'user_name=sysdba'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 48
    Top = 72
  end
  object IBTransaction1: TIBTransaction
    DefaultDatabase = IBDatabase1
    DefaultAction = TARollback
    AutoStopAction = saRollback
    Left = 48
    Top = 128
  end
  object IBDSCliente: TIBDataSet
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'delete from TAB_CLIENTE'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into TAB_CLIENTE'
      
        '  (CODIGO, NOME, APELIDO, ENDERECO, BAIRRO, CIDADE, UF, CEP, COM' +
        'PLEMENTO, '
      
        '   MORADIA, TIPO, SITUACAO, TELEFONE1, CELULAR, EMAIL, RG, CPF, ' +
        'ESTADOCIVIL, '
      
        '   DATA_CADASTRO, NASCIMENTO, NUMERO, RG_ORGAO, RG_ESTADO, RG_EM' +
        'ISSAO, '
      
        '   SEXO, HISTORICO, CNAE, COD_MUNICIPIO_IBGE, IBGE, FOTO, NACION' +
        'ALIDADE, '
      '   PAIS)'
      'values'
      
        '  (:CODIGO, :NOME, :APELIDO, :ENDERECO, :BAIRRO, :CIDADE, :UF, :' +
        'CEP, :COMPLEMENTO, '
      
        '   :MORADIA, :TIPO, :SITUACAO, :TELEFONE1, :CELULAR, :EMAIL, :RG' +
        ', :CPF, '
      
        '   :ESTADOCIVIL, :DATA_CADASTRO, :NASCIMENTO, :NUMERO, :RG_ORGAO' +
        ', :RG_ESTADO, '
      
        '   :RG_EMISSAO, :SEXO, :HISTORICO, :CNAE, :COD_MUNICIPIO_IBGE, :' +
        'IBGE, :FOTO, '
      '   :NACIONALIDADE, :PAIS)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  APELIDO,'
      '  ENDERECO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  COMPLEMENTO,'
      '  MORADIA,'
      '  TIPO,'
      '  SITUACAO,'
      '  TELEFONE1,'
      '  CELULAR,'
      '  EMAIL,'
      '  RG,'
      '  CPF,'
      '  ESTADOCIVIL,'
      '  DATA_CADASTRO,'
      '  NASCIMENTO,'
      '  NUMERO,'
      '  RG_ORGAO,'
      '  RG_ESTADO,'
      '  RG_EMISSAO,'
      '  SEXO,'
      '  HISTORICO,'
      '  CNAE,'
      '  COD_MUNICIPIO_IBGE,'
      '  IBGE,'
      '  FOTO,'
      '  NACIONALIDADE,'
      '  PAIS'
      'from TAB_CLIENTE '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from TAB_CLIENTE')
    ModifySQL.Strings = (
      'update TAB_CLIENTE'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  APELIDO = :APELIDO,'
      '  ENDERECO = :ENDERECO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  MORADIA = :MORADIA,'
      '  TIPO = :TIPO,'
      '  SITUACAO = :SITUACAO,'
      '  TELEFONE1 = :TELEFONE1,'
      '  CELULAR = :CELULAR,'
      '  EMAIL = :EMAIL,'
      '  RG = :RG,'
      '  CPF = :CPF,'
      '  ESTADOCIVIL = :ESTADOCIVIL,'
      '  DATA_CADASTRO = :DATA_CADASTRO,'
      '  NASCIMENTO = :NASCIMENTO,'
      '  NUMERO = :NUMERO,'
      '  RG_ORGAO = :RG_ORGAO,'
      '  RG_ESTADO = :RG_ESTADO,'
      '  RG_EMISSAO = :RG_EMISSAO,'
      '  SEXO = :SEXO,'
      '  HISTORICO = :HISTORICO,'
      '  CNAE = :CNAE,'
      '  COD_MUNICIPIO_IBGE = :COD_MUNICIPIO_IBGE,'
      '  IBGE = :IBGE,'
      '  FOTO = :FOTO,'
      '  NACIONALIDADE = :NACIONALIDADE,'
      '  PAIS = :PAIS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    ParamCheck = True
    UniDirectional = False
    Left = 240
    Top = 88
    object IBDSClienteCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"TAB_CLIENTE"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object TIBStringField
      FieldName = 'NOME'
      Origin = '"TAB_CLIENTE"."NOME"'
      Size = 80
    end
    object IBDSClienteAPELIDO: TIBStringField
      FieldName = 'APELIDO'
      Origin = '"TAB_CLIENTE"."APELIDO"'
      Size = 50
    end
    object IBDSClienteENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"TAB_CLIENTE"."ENDERECO"'
      Size = 80
    end
    object IBDSClienteBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"TAB_CLIENTE"."BAIRRO"'
      Size = 30
    end
    object IBDSClienteCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"TAB_CLIENTE"."CIDADE"'
      Size = 40
    end
    object IBDSClienteUF: TIBStringField
      FieldName = 'UF'
      Origin = '"TAB_CLIENTE"."UF"'
      Size = 2
    end
    object IBDSClienteCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"TAB_CLIENTE"."CEP"'
      Size = 10
    end
    object IBDSClienteTIPO: TIntegerField
      FieldName = 'TIPO'
      Origin = '"TAB_CLIENTE"."TIPO"'
    end
    object IBDSClienteSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
      Origin = '"TAB_CLIENTE"."SITUACAO"'
    end
    object IBDSClienteTELEFONE1: TIBStringField
      FieldName = 'TELEFONE1'
      Origin = '"TAB_CLIENTE"."TELEFONE1"'
    end
    object IBDSClienteCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"TAB_CLIENTE"."CELULAR"'
    end
    object IBDSClienteEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"TAB_CLIENTE"."EMAIL"'
      Size = 50
    end
    object IBDSClienteRG: TIBStringField
      FieldName = 'RG'
      Origin = '"TAB_CLIENTE"."RG"'
      Size = 25
    end
    object IBDSClienteCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"TAB_CLIENTE"."CPF"'
      Size = 18
    end
    object IBDSClienteESTADOCIVIL: TIBStringField
      FieldName = 'ESTADOCIVIL'
      Origin = '"TAB_CLIENTE"."ESTADOCIVIL"'
      Size = 15
    end
    object IBDSClienteDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = '"TAB_CLIENTE"."DATA_CADASTRO"'
    end
    object IBDSClienteNASCIMENTO: TIBStringField
      FieldName = 'NASCIMENTO'
      Origin = '"TAB_CLIENTE"."NASCIMENTO"'
      Size = 10
    end
    object IBDSClienteNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"TAB_CLIENTE"."NUMERO"'
      Size = 10
    end
    object IBDSClienteRG_ORGAO: TIBStringField
      FieldName = 'RG_ORGAO'
      Origin = '"TAB_CLIENTE"."RG_ORGAO"'
      Size = 5
    end
    object IBDSClienteRG_ESTADO: TIBStringField
      FieldName = 'RG_ESTADO'
      Origin = '"TAB_CLIENTE"."RG_ESTADO"'
      Size = 2
    end
    object IBDSClienteRG_EMISSAO: TDateField
      FieldName = 'RG_EMISSAO'
      Origin = '"TAB_CLIENTE"."RG_EMISSAO"'
    end
    object IBDSClienteSEXO: TIBStringField
      FieldName = 'SEXO'
      Origin = '"TAB_CLIENTE"."SEXO"'
      Size = 1
    end
    object IBDSClienteHISTORICO: TBlobField
      FieldName = 'HISTORICO'
      Origin = '"TAB_CLIENTE"."HISTORICO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object IBDSClienteCNAE: TIBStringField
      FieldName = 'CNAE'
      Origin = '"TAB_CLIENTE"."CNAE"'
      Size = 10
    end
    object IBDSClienteCOD_MUNICIPIO_IBGE: TIBStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Origin = '"TAB_CLIENTE"."COD_MUNICIPIO_IBGE"'
      Size = 10
    end
    object IBDSClienteIBGE: TIBStringField
      FieldName = 'IBGE'
      Origin = '"TAB_CLIENTE"."IBGE"'
      Size = 5
    end
    object IBDSClienteFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"TAB_CLIENTE"."FOTO"'
      Size = 255
    end
    object IBDSClienteNACIONALIDADE: TIBStringField
      FieldName = 'NACIONALIDADE'
      Origin = '"TAB_CLIENTE"."NACIONALIDADE"'
      Size = 60
    end
    object IBDSClientePAIS: TIBStringField
      FieldName = 'PAIS'
      Origin = '"TAB_CLIENTE"."PAIS"'
      Size = 60
    end
  end
  object DSCliente: TDataSource
    DataSet = IBDSCliente
    Left = 240
    Top = 136
  end
end
