unit Unt_produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Menus;

type
  Tfrm_Produto = class(TForm)
    edNfe: TEdit;
    edLucro: TEdit;
    edEstoqueAtual: TEdit;
    edEstoqueInicial: TEdit;
    edOut: TEdit;
    edIn: TEdit;
    edCusto: TEdit;
    edVenda: TEdit;
    edMarca: TEdit;
    edFornecedor: TEdit;
    CBTipo: TComboBox;
    edGrupo: TEdit;
    edProduto: TEdit;
    edUnit: TEdit;
    edCodBarra: TEdit;
    Edcodigo: TEdit;
    lbLucro: TLabel;
    lbEstAtual: TLabel;
    lbSaida: TLabel;
    lbEntrada: TLabel;
    lbCusto: TLabel;
    lbVenda: TLabel;
    lbEstInicial: TLabel;
    lbMarca: TLabel;
    lbFornecedor: TLabel;
    lbGrupo: TLabel;
    lbNfe: TLabel;
    lbUnidade: TLabel;
    LbProduto: TLabel;
    lbData: TLabel;
    lbTipo: TLabel;
    lbCodBarra: TLabel;
    lbCodigo: TLabel;
    DataSaida: TDateTimePicker;
    bt_Salvar: TButton;
    bt_Cancelar: TButton;
    lb_Aplic: TLabel;
    MenuCadastro: TMainMenu;
    File1: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    N1: TMenuItem;
    Print1: TMenuItem;
    PrintSetup1: TMenuItem;
    N2: TMenuItem;
    Exit1: TMenuItem;
    bt_Proximo: TButton;
    bt_Anterior: TButton;
    memoaplic: TMemo;
    procedure Bt_salvarClick(Sender: TObject);
    procedure bt_CancelarClick(Sender: TObject);
    procedure edVendaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edCustoChange(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
    FCampo1,
    FCampo2,
    FCampo3,
    FCampo4,
    FCampo5: Real;
  public
    { Public declarations }
  end;

var
  frm_Produto: Tfrm_Produto;

implementation

uses unt_servico;

{$R *.dfm}

procedure Tfrm_Produto.bt_CancelarClick(Sender: TObject);
begin
   close;
   frm_Produto.Release;
end;

procedure Tfrm_Produto.Bt_salvarClick(Sender: TObject);
begin
   close;
   frm_Produto.Release;
end;

procedure Tfrm_Produto.edCustoChange(Sender: TObject);
begin
     FCampo1 := StrToFloat(edCusto.Text);
end;

procedure Tfrm_Produto.edVendaChange(Sender: TObject);
begin
    FCampo2 := StrToFloat(edVenda.Text);
    FCampo3 := (FCampo2 - FCampo1);
    FCampo4 := (FCampo3/FCampo2);
    FCampo5 := (FCampo4*100);
    edLucro.Text := FloatToStr (FCampo5);
end;

procedure Tfrm_Produto.Exit1Click(Sender: TObject);
begin
    close;
    frm_Produto.Release;
end;

procedure Tfrm_Produto.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       Key := #0;
       Perform(Wm_NextDlgCtl,0,0);
     end;
  if key = #27 then
     begin
       close;
       frm_Produto.Release;
     end;
end;

end.
