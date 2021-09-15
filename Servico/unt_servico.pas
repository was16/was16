unit unt_servico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Menus;

type
  Tfrm_Servico = class(TForm)
    lbNServiço: TLabel;
    edQuantidade: TEdit;
    DescrProdutos: TMemo;
    btClienteSer: TButton;
    edClienteSer: TEdit;
    lbDataEntr: TLabel;
    DataEntr: TDateTimePicker;
    lbForPag: TLabel;
    cbFormPag: TComboBox;
    lbSubTotal: TLabel;
    edSubTotal: TEdit;
    lbDesconto: TLabel;
    edDesc: TEdit;
    edDesconto: TEdit;
    Label1: TLabel;
    lbhoraEntr: TLabel;
    edHoraEntr: TEdit;
    lbDataSaida: TLabel;
    DataSaida: TDateTimePicker;
    lbHoraSaida: TLabel;
    edHoraSaida: TEdit;
    lbDescServiços: TLabel;
    btTecnico: TButton;
    edTecnico: TEdit;
    lbSituacao: TLabel;
    cbSituacao: TComboBox;
    bt_Salvar: TButton;
    bt_Cancelar: TButton;
    edTotal: TEdit;
    menuCadastro: TMainMenu;
    File1: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    N1: TMenuItem;
    PrintSetup1: TMenuItem;
    N2: TMenuItem;
    Exit1: TMenuItem;
    bt_Proximo: TButton;
    bt_Anterior: TButton;
    procedure bt_SalvarClick(Sender: TObject);
    procedure bt_CancelarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edSubTotalChange(Sender: TObject);
    procedure edDescontoChange(Sender: TObject);
    procedure Exit1Click(Sender: TObject);


  private
      {Private declarations}
    FCampo1,
    FCampo2,
    FCampo3,
    FCampo4,
    FCampo5: Real;
  public
    { Public declarations }
  end;

var
  frm_Servico: Tfrm_Servico;

implementation

{$R *.dfm}

procedure Tfrm_Servico.bt_CancelarClick(Sender: TObject);
begin
   close;
   frm_Servico.Release;
end;

procedure Tfrm_Servico.bt_SalvarClick(Sender: TObject);
begin
   close;
   frm_Servico.Release;
end;

procedure Tfrm_Servico.edDescontoChange(Sender: TObject);
begin
    FCampo2 := StrToFloat(edDesconto.Text);
    FCampo3 := (FCampo1 - FCampo2);
    FCampo4 := (FCampo2/FCampo1);
    FCampo5 := (FCampo4*100);
    edDesc.Text := FloatToStr (FCampo5);
    edTotal.Text := FloatToStr (FCampo3);
end;

procedure Tfrm_Servico.edSubTotalChange(Sender: TObject);
begin
    FCampo1 := StrToFloat(edSubTotal.Text);
end;


procedure Tfrm_Servico.Exit1Click(Sender: TObject);
begin
   close;
   frm_Servico.Release;
end;

procedure Tfrm_Servico.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       Key := #0;
       Perform(Wm_NextDlgCtl,0,0);
     end;
  if key = #27 then
     begin
       close;
       frm_Servico.Release;
     end;
end;

end.
