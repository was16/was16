inherited Frm_Clientes: TFrm_Clientes
  Caption = 'Clientes'
  ClientHeight = 375
  ExplicitHeight = 434
  PixelsPerInch = 96
  TextHeight = 13
  object lbCodigo: TLabel [0]
    Left = 12
    Top = 3
    Width = 41
    Height = 13
    Caption = 'CODIGO'
  end
  object lbNome: TLabel [1]
    Left = 100
    Top = 3
    Width = 29
    Height = 13
    Caption = 'NOME'
  end
  object lbApelido: TLabel [2]
    Left = 12
    Top = 48
    Width = 43
    Height = 13
    Caption = 'APELIDO'
  end
  object lbEndereco: TLabel [3]
    Left = 8
    Top = 91
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
  end
  object lbBairro: TLabel [4]
    Left = 164
    Top = 136
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
  end
  object lbNumero: TLabel [5]
    Left = 12
    Top = 139
    Width = 43
    Height = 13
    Caption = 'NUMERO'
  end
  object lbCidade: TLabel [6]
    Left = 12
    Top = 184
    Width = 38
    Height = 13
    Caption = 'CIDADE'
  end
  object lbUF: TLabel [7]
    Left = 480
    Top = 184
    Width = 13
    Height = 13
    Caption = 'UF'
  end
  object lbCEP: TLabel [8]
    Left = 370
    Top = 139
    Width = 19
    Height = 13
    Caption = 'CEP'
  end
  object lbTipo: TLabel [9]
    Left = 376
    Top = 3
    Width = 24
    Height = 13
    Caption = 'TIPO'
  end
  object lbData: TLabel [10]
    Left = 376
    Top = 48
    Width = 27
    Height = 13
    Caption = 'DATA'
  end
  object edCodigo: TDBEdit [11]
    Left = 12
    Top = 19
    Width = 82
    Height = 21
    DataField = 'CODIGO'
    DataSource = DM_Principal.DSCliente
    TabOrder = 0
  end
  object edNome: TDBEdit [12]
    Left = 100
    Top = 19
    Width = 264
    Height = 21
    DataField = 'NOME'
    DataSource = DM_Principal.DSCliente
    TabOrder = 1
  end
  object edApelido: TDBEdit [13]
    Left = 12
    Top = 64
    Width = 352
    Height = 21
    DataField = 'APELIDO'
    DataSource = DM_Principal.DSCliente
    TabOrder = 2
  end
  object edEndereco: TDBEdit [14]
    Left = 12
    Top = 110
    Width = 498
    Height = 21
    DataField = 'ENDERECO'
    DataSource = DM_Principal.DSCliente
    TabOrder = 3
  end
  object edBairro: TDBEdit [15]
    Left = 164
    Top = 155
    Width = 200
    Height = 21
    DataField = 'BAIRRO'
    DataSource = DM_Principal.DSCliente
    TabOrder = 4
  end
  object edNumero: TDBEdit [16]
    Left = 12
    Top = 155
    Width = 134
    Height = 21
    DataField = 'NUMERO'
    DataSource = DM_Principal.DSCliente
    TabOrder = 5
  end
  object edCidade: TDBEdit [17]
    Left = 12
    Top = 200
    Width = 453
    Height = 21
    DataField = 'CIDADE'
    DataSource = DM_Principal.DSCliente
    TabOrder = 6
  end
  object edUF: TDBEdit [18]
    Left = 480
    Top = 200
    Width = 30
    Height = 21
    DataField = 'UF'
    DataSource = DM_Principal.DSCliente
    TabOrder = 7
  end
  object edCEP: TDBEdit [19]
    Left = 370
    Top = 155
    Width = 140
    Height = 21
    DataField = 'CEP'
    DataSource = DM_Principal.DSCliente
    TabOrder = 8
  end
  object edData: TDBEdit [20]
    Left = 376
    Top = 64
    Width = 134
    Height = 21
    DataField = 'DATA_CADASTRO'
    DataSource = DM_Principal.DSCliente
    TabOrder = 9
  end
  object cbTipo: TDBComboBox [21]
    Left = 376
    Top = 19
    Width = 134
    Height = 21
    DataField = 'TIPO'
    DataSource = DM_Principal.DSCliente
    Items.Strings = (
      'FISICA'
      'JURIDICA')
    TabOrder = 10
    OnChange = cbTipoChange
  end
  inherited DBNavigator1: TDBNavigator
    Left = 9
    Top = 342
    Width = 490
    DataSource = DM_Principal.DSCliente
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
    TabOrder = 11
    ExplicitLeft = 9
    ExplicitTop = 342
    ExplicitWidth = 490
  end
  inherited MenuCadastro: TMainMenu
    Left = 384
    Top = 240
    inherited File1: TMenuItem
      inherited New1: TMenuItem
        OnClick = New1Click
      end
    end
  end
end
