unit View.Cliente.Galleti;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxBarBuiltInMenu, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges, Data.DB,
  cxDBData, Vcl.Menus, cxContainer, dxLayoutcxEditAdapters, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutContainer, cxTextEdit, cxDBEdit, dxLayoutControl, Vcl.StdCtrls,
  Vcl.WinXCtrls, cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  Vcl.ExtCtrls, cxMemo, dxLayoutControlAdapters;

type
  TViewClienteGalleti = class(TForm)
    pnFiltros: TPanel;
    pgDados: TcxPageControl;
    pnlAcoes: TPanel;
    pgLista: TcxTabSheet;
    pgForm: TcxTabSheet;
    gPesquisaDBTableView1: TcxGridDBTableView;
    gPesquisaLevel1: TcxGridLevel;
    gPesquisa: TcxGrid;
    btnAdicionar: TcxButton;
    btnEditar: TcxButton;
    btnApagar: TcxButton;
    edtPesquisa: TSearchBox;
    lcPadraoGroup_Root: TdxLayoutGroup;
    lcPadrao: TdxLayoutControl;
    edtCodigo: TcxDBTextEdit;
    dxLayoutItem1: TdxLayoutItem;
    edtRazao: TcxDBTextEdit;
    dxLayoutItem2: TdxLayoutItem;
    edtFantasia: TcxDBTextEdit;
    dxLayoutItem3: TdxLayoutItem;
    edtTelefone: TcxDBTextEdit;
    dxLayoutItem4: TdxLayoutItem;
    edtCPFCNPJ: TcxDBTextEdit;
    dxLayoutItem5: TdxLayoutItem;
    edtRGIE: TcxDBTextEdit;
    dxLayoutItem6: TdxLayoutItem;
    edtTipo: TcxDBLookupComboBox;
    dxLayoutItem8: TdxLayoutItem;
    edtObservacao: TcxDBMemo;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    btnSalvar: TcxButton;
    dxLayoutItem9: TdxLayoutItem;
    btnDesfazer: TcxButton;
    dxLayoutItem10: TdxLayoutItem;
    dsConsulta: TDataSource;
    dsDados: TDataSource;
    gPesquisaDBTableView1PES_CODIGO: TcxGridDBColumn;
    gPesquisaDBTableView1PES_RAZAO: TcxGridDBColumn;
    gPesquisaDBTableView1PES_FANTASIA: TcxGridDBColumn;
    gPesquisaDBTableView1PES_TELEFONE: TcxGridDBColumn;
    gPesquisaDBTableView1PES_CNPJCPF: TcxGridDBColumn;
    gPesquisaDBTableView1PES_IERG: TcxGridDBColumn;
    gPesquisaDBTableView1PES_OBSERVACAO: TcxGridDBColumn;
    gPesquisaDBTableView1PES_TIPOPESSOA: TcxGridDBColumn;
    gPesquisaDBTableView1TIPO: TcxGridDBColumn;
    dsTipos: TDataSource;
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnDesfazerClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPesquisaInvokeSearch(Sender: TObject);
  private
    procedure ControlarTela;
    function getEmEdicao: Boolean;
  public
    procedure Pesquisar;
    procedure Adicionar;
    procedure Editar;
    procedure Apagar;
    procedure Salvar;
    procedure Desfazer;

    property EmEdicao: Boolean read getEmEdicao;
  end;

var
  ViewClienteGalleti: TViewClienteGalleti;

implementation

uses
  Service.conexao;

{$R *.dfm}

{ TViewClienteGalleti }

procedure TViewClienteGalleti.Adicionar;
begin
  ServiceConexao.qrPessoaTipo.Close;
  ServiceConexao.qrPessoaTipo.Open;

  with ServiceConexao.qrPessoas do
  begin
    Close;
    ParamByName('CODIGO').Value := 0;
    Open;

    Insert;
    FieldByName('PES_TIPOPESSOA').Value := 1;
  end;

  ControlarTela;
end;

procedure TViewClienteGalleti.Apagar;
begin
  ControlarTela;
end;

procedure TViewClienteGalleti.btnAdicionarClick(Sender: TObject);
begin
  Adicionar;
end;

procedure TViewClienteGalleti.btnApagarClick(Sender: TObject);
begin
  Apagar;
end;

procedure TViewClienteGalleti.btnDesfazerClick(Sender: TObject);
begin
  Desfazer;
end;

procedure TViewClienteGalleti.btnEditarClick(Sender: TObject);
begin
  Editar;
end;

procedure TViewClienteGalleti.btnSalvarClick(Sender: TObject);
begin
  Salvar;
end;

procedure TViewClienteGalleti.ControlarTela;
begin
  pgDados.HideTabs := True;

  if EmEdicao then
  begin
    pgForm.Show;
    pnlAcoes.Visible := False;
  end else
  begin
    pgLista.Show;
    pnlAcoes.Visible := True;
  end;
end;

procedure TViewClienteGalleti.Desfazer;
begin
  if ServiceConexao.qrPessoas.State in dsEditModes then
    ServiceConexao.qrPessoas.Cancel;

  ControlarTela;
end;

procedure TViewClienteGalleti.Editar;
begin
  ServiceConexao.qrPessoaTipo.Close;
  ServiceConexao.qrPessoaTipo.Open;

  with ServiceConexao.qrPessoas do
  begin
    Close;
    ParamByName('CODIGO').Value := ServiceConexao.qrPessoasPesquisaPES_CODIGO.AsInteger;
    Open;

    Edit;
  end;

  ControlarTela;
end;

procedure TViewClienteGalleti.edtPesquisaInvokeSearch(Sender: TObject);
begin
  Pesquisar;
end;

procedure TViewClienteGalleti.FormShow(Sender: TObject);
begin
  ControlarTela;
  edtPesquisa.SetFocus;
end;

function TViewClienteGalleti.getEmEdicao: Boolean;
begin
  Result := ServiceConexao.qrPessoas.State in dsEditModes;
end;

procedure TViewClienteGalleti.Pesquisar;
begin
  ControlarTela;

  with ServiceConexao.qrPessoasPesquisa do
  begin
    Close;
    ParamByName('PESQUISA').AsString := '%' + edtPesquisa.Text + '%';
    Open;

    gPesquisaDBTableView1.ApplyBestFit();
  end;
end;

procedure TViewClienteGalleti.Salvar;
begin
  try
    with ServiceConexao.qrPessoas do
    begin
      if State in dsEditModes then
        Post;
    end;

    ControlarTela;
    Pesquisar;
  except
    on e: Exception do
      raise Exception.Create('Falha ao salvar o registro.' + #13 + e.Message);
  end;
end;

end.
