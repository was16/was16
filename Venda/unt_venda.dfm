object frm_Venda: Tfrm_Venda
  Left = 293
  Top = 274
  Caption = 'Venda'
  ClientHeight = 292
  ClientWidth = 515
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesktopCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 14
  object lbQuantidade: TLabel
    Left = 448
    Top = 10
    Width = 42
    Height = 14
    Caption = 'Quant.'
  end
  object lbCodigo: TLabel
    Left = 8
    Top = 9
    Width = 43
    Height = 14
    Caption = 'C'#243'digo'
  end
  object lbNVenda: TLabel
    Left = 8
    Top = 177
    Width = 53
    Height = 14
    Caption = 'N'#186' Venda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 86
    Top = 177
    Width = 98
    Height = 14
    Caption = 'Data da Opera'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbForPag: TLabel
    Left = 8
    Top = 224
    Width = 130
    Height = 14
    Caption = 'Forma de Pagamento'
  end
  object lbSubTotal: TLabel
    Left = 303
    Top = 180
    Width = 71
    Height = 14
    Caption = 'Sub-Total R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbDesconto: TLabel
    Left = 259
    Top = 204
    Width = 52
    Height = 14
    Caption = 'Desconto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 190
    Top = 246
    Width = 46
    Height = 14
    Caption = 'Total R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 120
    Top = 9
    Width = 57
    Height = 14
    Caption = 'Produtos'
  end
  object edQuantidade: TEdit
    Left = 448
    Top = 24
    Width = 53
    Height = 22
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object edCodigo: TEdit
    Left = 8
    Top = 24
    Width = 94
    Height = 22
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object cbProdutos: TComboBox
    Left = 120
    Top = 24
    Width = 309
    Height = 22
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object memoVendas: TMemo
    Left = 8
    Top = 52
    Width = 493
    Height = 89
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      
        'Quant | C'#243'digo |  Produtos                        | Unidade | Va' +
        'lor Unit | Valor R$ ')
    ParentFont = False
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object btCliente: TButton
    Left = 8
    Top = 149
    Width = 58
    Height = 21
    Caption = 'Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object edCliente: TEdit
    Left = 72
    Top = 148
    Width = 429
    Height = 22
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object edNvenda: TEdit
    Left = 8
    Top = 192
    Width = 56
    Height = 22
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DateTimePicker1: TDateTimePicker
    Left = 86
    Top = 192
    Width = 98
    Height = 21
    Date = 43718.046038750000000000
    Time = 43718.046038750000000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object edSubTotal: TEdit
    Left = 380
    Top = 177
    Width = 121
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    Text = '0,00'
    OnChange = edSubTotalChange
    OnKeyPress = FormKeyPress
  end
  object edDesc: TEdit
    Left = 317
    Top = 201
    Width = 59
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    Text = '0,00 %'
    OnKeyPress = FormKeyPress
  end
  object edDesconto: TEdit
    Left = 380
    Top = 201
    Width = 121
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    Text = '0,00'
    OnChange = edDescontoChange
    OnKeyPress = FormKeyPress
  end
  object edTotal: TEdit
    Left = 242
    Top = 243
    Width = 98
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    Text = '0,00'
    OnKeyPress = FormKeyPress
  end
  object cbFormPag: TComboBox
    Left = 8
    Top = 243
    Width = 174
    Height = 22
    TabOrder = 11
    OnKeyPress = FormKeyPress
    Items.Strings = (
      'A Vista'
      'A Prazo'
      'Cart'#227'o de Cr'#233'dito'
      'Cart'#227'o de D'#233'bito'
      'Cheque')
  end
  object bt_Salvar: TButton
    Left = 356
    Top = 240
    Width = 73
    Height = 25
    Caption = 'Salvar'
    TabOrder = 13
    OnClick = bt_SalvarClick
  end
  object bt_Cancelar: TButton
    Left = 435
    Top = 239
    Width = 66
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 14
    OnClick = bt_CancelarClick
  end
end
