unit Unt_heranca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Menus;

type
  Tfrm_Heranca = class(TForm)
    DBNavigator1: TDBNavigator;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Heranca: Tfrm_Heranca;

implementation

{$R *.dfm}

end.
