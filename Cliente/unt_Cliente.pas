unit unt_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Unt_heranca, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Menus, Vcl.ExtCtrls;

type
  TFrm_Clientes = class(Tfrm_Heranca)
    lbCodigo: TLabel;
    lbNome: TLabel;
    lbApelido: TLabel;
    lbEndereco: TLabel;
    lbBairro: TLabel;
    lbNumero: TLabel;
    lbCidade: TLabel;
    lbUF: TLabel;
    lbCEP: TLabel;
    lbTipo: TLabel;
    lbData: TLabel;
    edCodigo: TDBEdit;
    edNome: TDBEdit;
    cbTipo: TDBComboBox;
    edApelido: TDBEdit;
    edData: TDBEdit;
    edEndereco: TDBEdit;
    edNumero: TDBEdit;
    edBairro: TDBEdit;
    edCEP: TDBEdit;
    edCidade: TDBEdit;
    edUF: TDBEdit;
    procedure New1Click(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Clientes: TFrm_Clientes;

implementation

uses unt_DM_Principal;

{$R *.dfm}


procedure TFrm_Clientes.New1Click(Sender: TObject);
begin
  inherited;
     DBNavigator1.BtnClick(nbinsert);
end;

end.
