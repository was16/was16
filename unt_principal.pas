unit unt_principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, pngimage, ExtCtrls, ImgList, jpeg, System.ImageList;

type
  TFrm_Principal = class(TForm)
    MenuPrincipal: TMainMenu;
    N1: TMenuItem;
    Cliente1: TMenuItem;
    Produto1: TMenuItem;
    Movimento1: TMenuItem;
    venda1: TMenuItem;
    servico: TMenuItem;
    ImageList1: TImageList;
    Img_Capa: TImage;
    procedure Cliente1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure venda1Click(Sender: TObject);
    procedure servicoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

uses unt_Cliente, Unt_produto, unt_servico, unt_venda;

{$R *.dfm}


procedure TFrm_Principal.Cliente1Click(Sender: TObject);
begin
  Frm_Clientes := TFrm_Clientes.Create(self);
  Frm_Clientes.showmodal;
end;


procedure TFrm_Principal.Produto1Click(Sender: TObject);
begin
  frm_Produto := Tfrm_Produto.Create(self);
  frm_Produto.ShowModal;
end;

procedure TFrm_Principal.servicoClick(Sender: TObject);
begin
  frm_Servico := Tfrm_Servico.Create(self);
  frm_Servico.ShowModal;
end;

procedure TFrm_Principal.venda1Click(Sender: TObject);
begin
  frm_Venda := Tfrm_Venda.Create(self);
  frm_Venda.ShowModal;
end;

end.
