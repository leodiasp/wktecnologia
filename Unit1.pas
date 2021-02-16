unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, DBXMySql, DB, SqlExpr, ADODB, StdCtrls, Mask, DBCtrls,
  DBClient, Provider, ExtCtrls, Grids, DBGrids, Buttons;

type
  TfrmPedidoVenda = class(TForm)
    ADOConnection1: TADOConnection;
    qryCliente: TADOQuery;
    GroupBox2: TGroupBox;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    cdsClientecd_cliente: TAutoIncField;
    cdsClientenm_cliente: TStringField;
    cdsClientenm_cidade: TStringField;
    cdsClientesg_uf: TStringField;
    qryProduto: TADOQuery;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    cdsProdutocd_produto: TAutoIncField;
    cdsProdutods_produto: TStringField;
    cdsProdutovlr_venda_produto: TBCDField;
    Label1: TLabel;
    editNuPedido: TDBEdit;
    Label2: TLabel;
    editDtEmissao: TDBEdit;
    Label3: TLabel;
    editCdCliente: TDBEdit;
    Label4: TLabel;
    lkcb_nome_cliente: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    qryPedidos_Gerais: TADOQuery;
    dspPedidos_Gerais: TDataSetProvider;
    cdsPedido_Gerais: TClientDataSet;
    dsPedidoGerais: TDataSource;
    qryPedido_Produto: TADOQuery;
    cdsPedido_Produto: TClientDataSet;
    dsPedido_Produto: TDataSource;
    cdsPedido_Geraisnu_pedido: TIntegerField;
    cdsPedido_Geraisdt_emissao: TDateField;
    cdsPedido_Geraiscd_cliente: TStringField;
    cdsPedido_Geraisvlr_total: TBCDField;
    dsRel_Gerais_Produtos: TDataSource;
    cdsPedido_GeraisqryPedido_Produto: TDataSetField;
    cdsPedido_Geraislk_cliente: TStringField;
    DBGrid1: TDBGrid;
    cdsPedido_Produtoid: TAutoIncField;
    cdsPedido_Produtonu_pedido: TIntegerField;
    cdsPedido_Produtocd_produto: TStringField;
    cdsPedido_Produtoqtde: TBCDField;
    cdsPedido_Produtovlr_unit_pedido: TBCDField;
    cdsPedido_Produtovlt_total_pedido: TBCDField;
    cdsPedido_Produtolk_produto: TStringField;
    btnSair: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    qryAux: TADOQuery;
    cdsPedido_Produtolk_vlr_unitario: TFloatField;
    cdsPedido_Produtovlr_total: TAggregateField;
    DBEdit1: TDBEdit;
    cdsPedido_Produtointcalc_qtde_x_unit: TFloatField;
    DBNavigator1: TDBNavigator;
    procedure cdsPedido_ProdutoCalcFields(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure cdsPedido_Produtocd_produtoChange(Sender: TField);
    procedure dsPedidoGeraisStateChange(Sender: TObject);
    procedure lbl_StateBanClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsPedido_GeraisBeforePost(DataSet: TDataSet);
    procedure cdsPedido_ProdutoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  { Classe WK Tecnologia }
  type
    TPedidoVenda = Class

    private

     nu_pedido: integer;
     cd_produto: integer;
     qtde: Real;
     vlr_unit_pedido: Real;
     vlr_total_pedido: Real;

    public


    function fcNumPedido: integer;
    procedure prExcluirProdutos ( nu_pedido: integer);


{
     procedure SetCd_Produto ();
     procedure SetQtde ();
     procedure SetVlr_unit_pedido ();
     procedure Setvlr_total_pedido ();

     function GetCd_Produto : Integer;
     function GetQtde : Real;
     function GetVlr_unit_pedido : Real;
     function Getvlr_total_pedido : Real;
     }

    published
    constructor Create();

  end;

var
  frmPedidoVenda: TfrmPedidoVenda;
  pedidovenda : TPedidoVenda;

implementation

{$R *.dfm}

procedure TfrmPedidoVenda.btnExcluirClick(Sender: TObject);
var
  errors: integer;
begin

  if MessageDlg('Deseja Realmente Excluir Este Registro ?',
     mtConfirmation,[mbyes,mbno],0) = mryes then
  begin
    Try
     ADOConnection1.BeginTrans;

     pedidovenda.prExcluirProdutos(StrToInt(editNuPedido.Text));

     dsPedidoGerais.DataSet.Delete;
     cdsPedido_Gerais.ApplyUpdates(-1);
     dsPedidoGerais.DataSet.Refresh;



     ADOConnection1.CommitTrans;
     Application.MessageBox('Registro Excluído com Sucesso','Atenção',+MB_OK+MB_ICONWARNING);
    Except
     ADOConnection1.RollbackTrans;
     Application.MessageBox('Erro ao Realizar o Processo !','Atenção',+MB_OK+MB_ICONWARNING);
    end;


  end;
end;

procedure TfrmPedidoVenda.btnGravarClick(Sender: TObject);
var
  errors: integer;


begin

  Try
   ADOConnection1.BeginTrans;
   cdsPedido_Gerais.Post;
   cdsPedido_Gerais.ApplyUpdates(-1) ;
   ADOConnection1.CommitTrans;
   Application.MessageBox('Registro Gravado com Sucesso','Atenção',+MB_OK+MB_ICONWARNING);
  Except
   ADOConnection1.RollbackTrans;
   Application.MessageBox('Erro ao Realizar o Processo !','Atenção',+MB_OK+MB_ICONWARNING);
  end;

end;

procedure TfrmPedidoVenda.btnIncluirClick(Sender: TObject);
begin

  if not dsPedidoGerais.DataSet.Active then
  begin
    dsPedidoGerais.DataSet.Open;
  end;
   dsPedidoGerais.DataSet.Append;

   cdsPedido_Geraisnu_pedido.AsInteger := pedidovenda.fcNumPedido;
   editDtEmissao.SetFocus;
   cdsPedido_Geraisdt_emissao.AsDateTime := Now;

end;

procedure TfrmPedidoVenda.btnSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmPedidoVenda.cdsPedido_GeraisBeforePost(DataSet: TDataSet);
begin
if DBEdit1.Text <> ''  then  cdsPedido_Geraisvlr_total.AsFloat := StrToFloat(DBEdit1.Text);
end;

procedure TfrmPedidoVenda.cdsPedido_ProdutoBeforePost(DataSet: TDataSet);
begin
if cdsPedido_Produtointcalc_qtde_x_unit.AsFloat <> 0 then

cdsPedido_Produtovlt_total_pedido.AsFloat := cdsPedido_Produtointcalc_qtde_x_unit.AsFloat;
end;

procedure TfrmPedidoVenda.cdsPedido_ProdutoCalcFields(DataSet: TDataSet);
begin

cdsPedido_Produtointcalc_qtde_x_unit.AsFloat := cdsPedido_Produtoqtde.AsFloat * cdsPedido_Produtovlr_unit_pedido.AsFloat;

end;

procedure TfrmPedidoVenda.cdsPedido_Produtocd_produtoChange(Sender: TField);
begin

cdsPedido_Produtovlr_unit_pedido.AsFloat := cdsPedido_Produtolk_vlr_unitario.AsFloat;


end;

procedure TfrmPedidoVenda.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   case key of
  13 : Key := 9 ;

  end;
end;

procedure TfrmPedidoVenda.dsPedidoGeraisStateChange(Sender: TObject);
begin
  btnIncluir.Enabled := dsPedidoGerais.State in [dsBrowse,dsInactive,dsInsert];
  btnGravar.Enabled := dsPedidoGerais.State  in [dsInsert,dsEdit];
  btnExcluir.Enabled := dsPedidoGerais.State in [dsBrowse];

end;

procedure TfrmPedidoVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin


     if (dsPedidoGerais.State in [dsInsert,dsEdit]) then
  begin
    if MessageDlg('Deseja Realmente Sair ?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
    begin
      dsPedidoGerais.DataSet.Close;
      dsPedidoGerais.DataSet.Open;
      dsPedidoGerais.DataSet.Refresh;
    end
    else begin
      Abort;
    end;
  end;

end;

procedure TfrmPedidoVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin


   if key = VK_ESCAPE then begin

     Close;

   end;

   if Key = VK_RETURN then Perform(Wm_NextDlgCtl,0,0);


end;


procedure TfrmPedidoVenda.lbl_StateBanClick(Sender: TObject);
begin

end;

{ TPedidoVenda }

constructor TPedidoVenda.Create;
begin

end;

function TPedidoVenda.fcNumPedido: integer;
begin

  with frmPedidoVenda do
  begin

     qryAux.Close;
     qryAux.SQL.Clear;
     qryAux.SQL.Text := 'SELECT  IFNULL(MAX(NU_PEDIDO),0) + 1  FROM TB_DADOS_GERAIS_PEDIDO';
     qryAux.Open;

     Result := qryAux.Fields.Fields[0].AsInteger;

  end;

end;

procedure TPedidoVenda.prExcluirProdutos(nu_pedido: integer);
begin
  with frmPedidoVenda do
   begin
     qryAux.Close;
     qryAux.SQL.Text := '';
     qryAux.SQL.Text := ' delete from tb_pedido_produto where nu_pedido = :nu_pedido';
     qryAux.Parameters.ParamByName('nu_pedido').Value := nu_pedido;
     qryAux.ExecSQL;
   end;

end;

end.
