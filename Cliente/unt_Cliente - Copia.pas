unit unt_Cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, GIFImg, ExtCtrls, StdCtrls, Menus, ImgList, ComCtrls;

type
  TFrm_Clientes = class(TForm)
    lbEmail: TLabel;
    lbTell: TLabel;
    lbCell: TLabel;
    lbComp: TLabel;
    Label12: TLabel;
    lbEstCivil: TLabel;
    lbSexo: TLabel;
    lbCPF: TLabel;
    lbRG: TLabel;
    lbUF: TLabel;
    lbCity: TLabel;
    lbLogradouro: TLabel;
    lbBairro: TLabel;
    lbNumero: TLabel;
    lbNome: TLabel;
    lbPessoa: TLabel;
    lbFantasia: TLabel;
    edEmail: TEdit;
    cmbSexo: TComboBox;
    edCell: TEdit;
    edTel: TEdit;
    edCPF: TEdit;
    edRG: TEdit;
    edBairro: TEdit;
    edNum: TEdit;
    edLogradoro: TEdit;
    Edt_Nome: TEdit;
    CmbPss: TComboBox;
    edFantasia: TEdit;
    DateNascimento: TDateTimePicker;
    lb_Codigo: TLabel;
    Edit1: TEdit;
    edCidade: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Edit3: TEdit;
    Edit2: TEdit;
    menuCadastro: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    N4: TMenuItem;
    PrintSetup1: TMenuItem;
    Print1: TMenuItem;
    N5: TMenuItem;
    SaveAs1: TMenuItem;
    Save1: TMenuItem;
    Open1: TMenuItem;
    New1: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    bt_Proximo: TButton;
    bt_Anterior: TButton;
    procedure bt_CancelarClick(Sender: TObject);
    procedure bt_SalvarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Clientes: TFrm_Clientes;

implementation

uses unt_servico;

{$R *.dfm}

procedure TFrm_Clientes.bt_CancelarClick(Sender: TObject);
begin
    close;
    frm_Clientes.Release;
end;

procedure TFrm_Clientes.bt_SalvarClick(Sender: TObject);
begin
   close;
   frm_Clientes.Release;
end;


procedure TFrm_Clientes.Exit1Click(Sender: TObject);
begin
    close;
    Frm_Clientes.Release;
end;

procedure TFrm_Clientes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     begin
       Key := #0;
       Perform(Wm_NextDlgCtl,0,0);
     end;
  if key = #27 then
     begin
       close;
       frm_Clientes.Release;
     end;
end;

end.
