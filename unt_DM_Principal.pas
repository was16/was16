unit unt_DM_Principal;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBCustomDataSet;

type
  TDM_Principal = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    IBDSCliente: TIBDataSet;
    DSCliente: TDataSource;
    IBDSClienteCODIGO: TIBStringField;
    IBDSClienteAPELIDO: TIBStringField;
    IBDSClienteENDERECO: TIBStringField;
    IBDSClienteBAIRRO: TIBStringField;
    IBDSClienteCIDADE: TIBStringField;
    IBDSClienteUF: TIBStringField;
    IBDSClienteCEP: TIBStringField;
    IBDSClienteTIPO: TIntegerField;
    IBDSClienteSITUACAO: TIntegerField;
    IBDSClienteTELEFONE1: TIBStringField;
    IBDSClienteCELULAR: TIBStringField;
    IBDSClienteEMAIL: TIBStringField;
    IBDSClienteRG: TIBStringField;
    IBDSClienteCPF: TIBStringField;
    IBDSClienteESTADOCIVIL: TIBStringField;
    IBDSClienteDATA_CADASTRO: TDateField;
    IBDSClienteNASCIMENTO: TIBStringField;
    IBDSClienteNUMERO: TIBStringField;
    IBDSClienteRG_ORGAO: TIBStringField;
    IBDSClienteRG_ESTADO: TIBStringField;
    IBDSClienteRG_EMISSAO: TDateField;
    IBDSClienteSEXO: TIBStringField;
    IBDSClienteHISTORICO: TBlobField;
    IBDSClienteCNAE: TIBStringField;
    IBDSClienteCOD_MUNICIPIO_IBGE: TIBStringField;
    IBDSClienteIBGE: TIBStringField;
    IBDSClienteFOTO: TIBStringField;
    IBDSClienteNACIONALIDADE: TIBStringField;
    IBDSClientePAIS: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Principal: TDM_Principal;

implementation

{$R *.dfm}

procedure TDM_Principal.DataModuleCreate(Sender: TObject);
begin
   IBDatabase1.Connected := True;
   IBDSCliente.Open;
end;

end.
