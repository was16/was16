unit unt_venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Menus;

type
  Tfrm_Venda = class(TForm)
    lbQuantidade: TLabel;
    lbCodigo: TLabel;
    edQuantidade: TEdit;
    edCodigo: TEdit;
    cbProdutos: TComboBox;
    memoVendas: TMemo;
    btCliente: TButton;
    edCliente: TEdit;
    lbNVenda: TLabel;
    Label2: TLabel;
    edNvenda: TEdit;
    DateTimePicker1: TDateTimePicker;
    lbForPag: TLabel;
    lbSubTotal: TLabel;
    edSubTotal: TEdit;
    lbDesconto: TLabel;
    edDesc: TEdit;
    edDesconto: TEdit;
    Label1: TLabel;
    edTotal: TEdit;
    cbFormPag: TComboBox;
    bt_Salvar: TButton;
    bt_Cancelar: TButton;
    Label3: TLabel;
    procedure bt_SalvarClick(Sender: TObject);
    procedure bt_CancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edDescontoChange(Sender: TObject);
    procedure edSubTotalChange(Sender: TObject);
  private
    { Private declarations}
    FCampo1,
    FCampo2,
    FCampo3,
    FCampo4,
    FCampo5: Real;
  public
    { Public declarations }
  end;

var
  frm_Venda: Tfrm_Venda;

implementation

{$R *.dfm}

procedure Tfrm_Venda.bt_CancelarClick(Sender: TObject);
begin
   close;
   frm_Venda.Release;
end;

procedure Tfrm_Venda.bt_SalvarClick(Sender: TObject);
begin
   close;
   frm_Venda.Release;

end;


procedure Tfrm_Venda.edDescontoChange(Sender: TObject);
begin
    FCampo2 := StrToFloat(edDesconto.Text);
    FCampo3 := (FCampo1 - FCampo2);
    FCampo4 := (FCampo2/FCampo1);
    FCampo5 := (FCampo4*100);
    edDesc.Text := FloatToStr (FCampo5);
    edTotal.Text := FloatToStr (FCampo3);
end;

procedure Tfrm_Venda.edSubTotalChange(Sender: TObject);
begin
    FCampo1 := StrToFloat(edSubTotal.Text);
end;

procedure Tfrm_Venda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       Key := #0;
       Perform(Wm_NextDlgCtl,0,0);
     end;
  if key = #27 then
     begin
       close;
       frm_Venda.Release;
     end;
end;

end.
