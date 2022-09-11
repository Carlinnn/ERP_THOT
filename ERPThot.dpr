program ERPThot;

uses
  Vcl.Forms,
  Provider.constants in 'src\providers\Provider.constants.pas',
  View.principal in 'src\views\View.principal.pas' {ViewPrincipal},
  Service.conexao in 'src\services\Service.conexao.pas' {ServiceConexao: TDataModule},
  Service.cadastro in 'src\services\Service.cadastro.pas' {ServiceCadastro: TDataModule},
  View.base in 'src\views\View.base.pas' {ViewBase},
  View.base.listas in 'src\views\View.base.listas.pas' {ViewBaseListas},
  View.clientes in 'src\views\View.clientes.pas' {ViewBaseListas1},
  View.Cliente.Galleti in 'src\views\View.Cliente.Galleti.pas' {ViewClienteGalleti};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TServiceConexao, ServiceConexao);
  ServiceConexao.Conectar;
  ServiceConexao.AbrirConsultas;

  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.Run;
end.
