program Project2;

uses
  Forms,
  unt_principal in 'unt_principal.pas' {Frm_Principal},
  Unt_produto in 'Produto\Unt_produto.pas' {frm_Produto},
  unt_servico in 'Servico\unt_servico.pas' {frm_Servico},
  unt_venda in 'Venda\unt_venda.pas' {frm_Venda},
  Unt_heranca in 'Heranca\Unt_heranca.pas' {frm_Heranca},
  unt_DM_Principal in 'unt_DM_Principal.pas' {DM_Principal: TDataModule},
  unt_Cliente in 'Cliente\unt_Cliente.pas' {Frm_Clientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'PRWG-E';
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.CreateForm(TDM_Principal, DM_Principal);
  Application.CreateForm(TFrm_Clientes, Frm_Clientes);
  Application.Run;
end.
