unit Service.conexao;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Comp.UI,
  FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase,
  FireDAC.Phys.FB,
  System.IniFiles,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  Provider.constants;

type
  TErroConexaoConfig = Exception;
  TErroConexaoAcesso = Exception;

  TConexaoParametro = record
    Database: string;
    Server: string;
    Port: Integer;
    User: string;
    Password: string;
  end;

  TServiceConexao = class(TDataModule)
    FDConn: TFDConnection;
    FDCursor: TFDGUIxWaitCursor;
    FDDriverLink: TFDPhysFBDriverLink;
    QRY_Filial: TFDQuery;
    QRY_FilialFIL_CODIGO: TIntegerField;
    QRY_FilialFIL_RAZAO: TStringField;
    QRY_FilialFIL_FANTASIA: TStringField;
    QRY_FilialFIL_CNPJ: TStringField;
    QRY_FilialFIL_TELEFONE: TStringField;
    qrPessoas: TFDQuery;
    qrPessoasPES_CODIGO: TIntegerField;
    qrPessoasPES_RAZAO: TStringField;
    qrPessoasPES_FANTASIA: TStringField;
    qrPessoasPES_TELEFONE: TStringField;
    qrPessoasPES_CNPJCPF: TStringField;
    qrPessoasPES_IERG: TStringField;
    qrPessoasPES_OBSERVACAO: TStringField;
    qrPessoasPES_TIPOPESSOA: TIntegerField;
    qrPessoasPesquisa: TFDQuery;
    qrPessoaTipo: TFDQuery;
    qrPessoasPesquisaPES_CODIGO: TIntegerField;
    qrPessoasPesquisaPES_RAZAO: TStringField;
    qrPessoasPesquisaPES_FANTASIA: TStringField;
    qrPessoasPesquisaPES_TELEFONE: TStringField;
    qrPessoasPesquisaPES_CNPJCPF: TStringField;
    qrPessoasPesquisaPES_IERG: TStringField;
    qrPessoasPesquisaPES_OBSERVACAO: TStringField;
    qrPessoasPesquisaPES_TIPOPESSOA: TIntegerField;
    qrPessoasPesquisaTIPO: TStringField;
    qrPessoaTipoID: TIntegerField;
    qrPessoaTipoNOME: TStringField;
  private
    function CarregarConfig: TConexaoParametro;
  public
    procedure Conectar;
    procedure AbrirConsultas;
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceConexao.AbrirConsultas;
begin
  QRY_Filial.Close;
  QRY_Filial.Params[0].AsInteger := FILIAL_PADAO_SISTEMA;
  QRY_Filial.Open();

  iCOD_FILIAL := QRY_FilialFIL_CODIGO.AsInteger;
  sRAZAO_FILIAL := QRY_FilialFIL_RAZAO.AsString;
end;

procedure TServiceConexao.Conectar;
var
  LConfig: TConexaoParametro;
begin
  LConfig := CarregarConfig;

  try
    with FDConn do
    begin
      Connected  := False;

      Params.Values['Database'] := LConfig.Database;
      Params.Values['User_Name'] := LConfig.User;
      Params.Values['Password'] := LConfig.Password;
      Params.Values['Server'] := LConfig.Server;
      Params.Values['Porta'] := LConfig.Port.ToString;

      Connected := True;
    end;
  except
    on e: Exception do
      raise TErroConexaoAcesso.Create('Falha ao conectar no banco de dados.' + #13 + e.Message);
  end;
end;

function TServiceConexao.CarregarConfig: TConexaoParametro;
var
  LIniFile: TMemIniFile;
  LCaminho: string;
  LParametros: TConexaoParametro;
begin
  LCaminho := ExtractFileDir(ParamStr(0)) + '\thot.ini';

  if not FileExists(LCaminho) then
    raise TErroConexaoConfig.Create('Arquivo de configuração não localizado. (thot.ini)');

  LIniFile := TMemIniFile.Create(LCaminho);

  try
    with LParametros do
    begin
      Database := LIniFile.ReadString('Conexao', 'Database', 'DADOS.FDB');
      Server := LIniFile.ReadString('Conexao', 'Servidor', '127.0.0.1');
      Port := LIniFile.ReadInteger('Conexao', 'Porta', 3050);
      User := LIniFile.ReadString('Conexao', 'Usuario', 'SYSDBA');
      Password := LIniFile.ReadString('Conexao', 'Senha', 'masterkey');
    end;

    Result := LParametros;
  finally
    FreeAndNil(LIniFile);
  end;
end;

end.
