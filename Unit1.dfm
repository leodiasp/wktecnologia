object frmPedidoVenda: TfrmPedidoVenda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Pedido de Venda'
  ClientHeight = 406
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 775
    Height = 64
    Align = alTop
    Caption = '   Informe os Dados da Venda   '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 69
      Height = 13
      Caption = 'Num. Pedido'
      FocusControl = editNuPedido
    end
    object Label2: TLabel
      Left = 103
      Top = 16
      Width = 76
      Height = 13
      Caption = 'Data Emiss'#227'o'
      FocusControl = editDtEmissao
    end
    object Label3: TLabel
      Left = 217
      Top = 16
      Width = 39
      Height = 13
      Caption = 'Cliente'
      FocusControl = editCdCliente
    end
    object Label4: TLabel
      Left = 287
      Top = 16
      Width = 91
      Height = 13
      Caption = 'Nome do Cliente'
      FocusControl = lkcb_nome_cliente
    end
    object editNuPedido: TDBEdit
      Left = 16
      Top = 32
      Width = 81
      Height = 21
      Color = clInfoBk
      DataField = 'nu_pedido'
      DataSource = dsPedidoGerais
      TabOrder = 0
      OnKeyDown = FormKeyDown
    end
    object editDtEmissao: TDBEdit
      Left = 103
      Top = 32
      Width = 106
      Height = 21
      Color = clInfoBk
      DataField = 'dt_emissao'
      DataSource = dsPedidoGerais
      MaxLength = 10
      TabOrder = 1
      OnKeyDown = FormKeyDown
    end
    object editCdCliente: TDBEdit
      Left = 215
      Top = 32
      Width = 66
      Height = 21
      Color = clInfoBk
      DataField = 'cd_cliente'
      DataSource = dsPedidoGerais
      TabOrder = 2
      OnKeyDown = FormKeyDown
    end
    object lkcb_nome_cliente: TDBLookupComboBox
      Left = 287
      Top = 32
      Width = 210
      Height = 21
      Color = clInfoBk
      DataField = 'lk_cliente'
      DataSource = dsPedidoGerais
      TabOrder = 3
      OnKeyDown = FormKeyDown
    end
    object DBNavigator1: TDBNavigator
      Left = 503
      Top = 30
      Width = 268
      Height = 25
      DataSource = dsPedidoGerais
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 4
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 64
    Width = 775
    Height = 259
    Align = alTop
    Caption = '   Produtos da Venda   '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 16
      Width = 771
      Height = 241
      Align = alBottom
      Color = clInfoBk
      DataSource = dsPedido_Produto
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Touch.ParentTabletOptions = False
      Touch.TabletOptions = []
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'cd_produto'
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'lk_produto'
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'qtde'
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'vlr_unit_pedido'
          Width = 106
          Visible = True
        end
        item
          Color = clInfoBk
          Expanded = False
          FieldName = 'intcalc_qtde_x_unit'
          ReadOnly = True
          Width = 99
          Visible = True
        end>
    end
  end
  object btnSair: TBitBtn
    Left = 695
    Top = 359
    Width = 75
    Height = 34
    Cursor = crHandPoint
    Hint = 'Sair do Sistema'
    Cancel = True
    Caption = '&Sair'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
      0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
      0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
      0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
      0333337F777FFFFF7F3333000000000003333377777777777333}
    ModalResult = 2
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = btnSairClick
  end
  object btnExcluir: TBitBtn
    Left = 471
    Top = 357
    Width = 75
    Height = 34
    Cursor = crHandPoint
    Hint = 'Excluir Registro'
    Caption = '&Excluir'
    DoubleBuffered = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333FF3333333333333003333333333333377F33333333333307
      733333FFF333337773333C003333307733333777FF333777FFFFC0CC03330770
      000077777FF377777777C033C03077FFFFF077FF77F777FFFFF7CC00000F7777
      777077777777777777773CCCCC00000000003777777777777777333330030FFF
      FFF03333F77F7F3FF3F7333C0C030F00F0F03337777F7F77373733C03C030FFF
      FFF03377F77F7F3F333733C03C030F0FFFF03377F7737F733FF733C000330FFF
      0000337777F37F3F7777333CCC330F0F0FF0333777337F737F37333333330FFF
      0F03333333337FFF7F7333333333000000333333333377777733}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = btnExcluirClick
  end
  object btnGravar: TBitBtn
    Left = 247
    Top = 359
    Width = 75
    Height = 34
    Cursor = crHandPoint
    Hint = 'Gravar Registro'
    Caption = '&Gravar'
    DoubleBuffered = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
      00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
      00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
      00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
      0003737FFFFFFFFF7F7330099999999900333777777777777733}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btnGravarClick
  end
  object btnIncluir: TBitBtn
    Left = 9
    Top = 357
    Width = 75
    Height = 34
    Cursor = crHandPoint
    Hint = 'Inclui um Novo Registro'
    Caption = '&Novo'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
      FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
      FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
      007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
      7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
      99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
      99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
      99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
      93337FFFF7737777733300000033333333337777773333333333}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = btnIncluirClick
  end
  object DBEdit1: TDBEdit
    Left = 649
    Top = 327
    Width = 121
    Height = 24
    Color = clInfoBk
    DataField = 'vlr_total'
    DataSource = dsPedido_Produto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=wktecnologia'
    LoginPrompt = False
    Left = 464
    Top = 16
  end
  object qryCliente: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_cliente')
    Left = 544
    Top = 16
  end
  object dspCliente: TDataSetProvider
    DataSet = qryCliente
    Left = 608
    Top = 16
  end
  object cdsCliente: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 672
    Top = 16
    object cdsClientecd_cliente: TAutoIncField
      FieldName = 'cd_cliente'
      ReadOnly = True
    end
    object cdsClientenm_cliente: TStringField
      FieldName = 'nm_cliente'
      Size = 60
    end
    object cdsClientenm_cidade: TStringField
      FieldName = 'nm_cidade'
      Size = 50
    end
    object cdsClientesg_uf: TStringField
      FieldName = 'sg_uf'
      Size = 255
    end
  end
  object qryProduto: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from tb_produto order by ds_produto')
    Left = 296
    Top = 72
  end
  object dspProduto: TDataSetProvider
    DataSet = qryProduto
    Left = 384
    Top = 72
  end
  object cdsProduto: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProduto'
    Left = 448
    Top = 72
    object cdsProdutocd_produto: TAutoIncField
      FieldName = 'cd_produto'
      ReadOnly = True
    end
    object cdsProdutods_produto: TStringField
      FieldName = 'ds_produto'
      Size = 100
    end
    object cdsProdutovlr_venda_produto: TBCDField
      FieldName = 'vlr_venda_produto'
      Precision = 8
      Size = 2
    end
  end
  object qryPedidos_Gerais: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from tb_dados_gerais_pedido order by nu_pedido')
    Left = 288
    Top = 128
  end
  object dspPedidos_Gerais: TDataSetProvider
    DataSet = qryPedidos_Gerais
    Options = [poCascadeDeletes, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 384
    Top = 128
  end
  object cdsPedido_Gerais: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidos_Gerais'
    BeforePost = cdsPedido_GeraisBeforePost
    Left = 488
    Top = 128
    object cdsPedido_Geraisnu_pedido: TIntegerField
      FieldName = 'nu_pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPedido_Geraisdt_emissao: TDateField
      FieldName = 'dt_emissao'
      EditMask = '!99/99/0000;1;_'
    end
    object cdsPedido_Geraiscd_cliente: TStringField
      FieldName = 'cd_cliente'
      Size = 10
    end
    object cdsPedido_Geraisvlr_total: TBCDField
      FieldName = 'vlr_total'
      Precision = 10
      Size = 2
    end
    object cdsPedido_GeraisqryPedido_Produto: TDataSetField
      FieldName = 'qryPedido_Produto'
    end
    object cdsPedido_Geraislk_cliente: TStringField
      FieldKind = fkLookup
      FieldName = 'lk_cliente'
      LookupDataSet = cdsCliente
      LookupKeyFields = 'cd_cliente'
      LookupResultField = 'nm_cliente'
      KeyFields = 'cd_cliente'
      Size = 50
      Lookup = True
    end
  end
  object dsPedidoGerais: TDataSource
    DataSet = cdsPedido_Gerais
    OnStateChange = dsPedidoGeraisStateChange
    Left = 584
    Top = 128
  end
  object qryPedido_Produto: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = dsRel_Gerais_Produtos
    Parameters = <
      item
        Name = 'nu_pedido'
        DataType = ftInteger
        Value = 1
      end>
    SQL.Strings = (
      'select * from tb_pedido_produto where nu_pedido = :nu_pedido')
    Left = 288
    Top = 176
  end
  object cdsPedido_Produto: TClientDataSet
    Active = True
    Aggregates = <>
    AggregatesActive = True
    DataSetField = cdsPedido_GeraisqryPedido_Produto
    Params = <>
    BeforePost = cdsPedido_ProdutoBeforePost
    OnCalcFields = cdsPedido_ProdutoCalcFields
    Left = 384
    Top = 176
    object cdsPedido_Produtoid: TAutoIncField
      FieldName = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object cdsPedido_Produtonu_pedido: TIntegerField
      FieldName = 'nu_pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Visible = False
    end
    object cdsPedido_Produtocd_produto: TStringField
      DisplayLabel = 'C'#243'd. Produto'
      DisplayWidth = 12
      FieldName = 'cd_produto'
      OnChange = cdsPedido_Produtocd_produtoChange
      Size = 15
    end
    object cdsPedido_Produtolk_produto: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      DisplayWidth = 47
      FieldKind = fkLookup
      FieldName = 'lk_produto'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'cd_produto'
      LookupResultField = 'ds_produto'
      KeyFields = 'cd_produto'
      Size = 50
      Lookup = True
    end
    object cdsPedido_Produtoqtde: TBCDField
      DisplayLabel = 'Quant.'
      DisplayWidth = 12
      FieldName = 'qtde'
      Precision = 8
      Size = 2
    end
    object cdsPedido_Produtovlr_unit_pedido: TBCDField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      DisplayWidth = 17
      FieldName = 'vlr_unit_pedido'
      DisplayFormat = '0.00'
      Precision = 8
      Size = 2
    end
    object cdsPedido_Produtovlt_total_pedido: TBCDField
      DisplayLabel = 'Vlr. Total'
      DisplayWidth = 15
      FieldName = 'vlt_total_pedido'
      DisplayFormat = '0.00'
      Precision = 8
      Size = 2
    end
    object cdsPedido_Produtolk_vlr_unitario: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldKind = fkLookup
      FieldName = 'lk_vlr_unitario'
      LookupDataSet = cdsProduto
      LookupKeyFields = 'cd_produto'
      LookupResultField = 'vlr_venda_produto'
      KeyFields = 'cd_produto'
      Visible = False
      DisplayFormat = '0.00'
      Lookup = True
    end
    object cdsPedido_Produtointcalc_qtde_x_unit: TFloatField
      DisplayLabel = 'Vlr. Total Produto'
      DisplayWidth = 10
      FieldKind = fkInternalCalc
      FieldName = 'intcalc_qtde_x_unit'
      DisplayFormat = '0.00'
    end
    object cdsPedido_Produtovlr_total: TAggregateField
      Alignment = taRightJustify
      FieldName = 'vlr_total'
      Active = True
      DisplayFormat = '0.00'
      Expression = 'SUM(intcalc_qtde_x_unit)'
    end
  end
  object dsPedido_Produto: TDataSource
    DataSet = cdsPedido_Produto
    Left = 488
    Top = 176
  end
  object dsRel_Gerais_Produtos: TDataSource
    DataSet = qryPedidos_Gerais
    Left = 624
    Top = 176
  end
  object qryAux: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 136
    Top = 200
  end
end
