unit View.principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  dxGDIPlusClasses,
  System.ImageList,
  Vcl.ImgList,
  System.Actions,
  Vcl.ActnList,
  Provider.constants;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlRodape: TPanel;
    pnlLogo: TPanel;
    pnLineLogo: TPanel;
    lblTituloEmpresa: TLabel;
    lblDescricaoEmpresa: TLabel;
    pnlTextoVersao: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    pnlUsuarioLogadoTemplate: TPanel;
    pnlLinhaUsuario: TPanel;
    pnlConteudoPrincipal: TPanel;
    pnlTextoUsuario: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    imgUserBranco: TImage;
    pnlConteudo: TPanel;
    Label4: TLabel;
    pnlLicenciado: TPanel;
    pnlLineRodape: TPanel;
    pnlRodapeLine: TPanel;
    lblNomeEmpresa: TLabel;
    Label7: TLabel;
    pnlSair: TPanel;
    pnlShapeMenu: TPanel;
    ShapeMenu: TShape;
    pnlDadosMenu: TPanel;
    btnCaixa: TSpeedButton;
    btnConfiguracoes: TSpeedButton;
    btnClientes: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnProdutos: TSpeedButton;
    pnlNomeEmpresa: TPanel;
    btnSair: TSpeedButton;
    imgUserLaranja: TImage;
    imgBackground: TImage;
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure lblTituloEmpresaMouseEnter(Sender: TObject);
    procedure lblTituloEmpresaMouseLeave(Sender: TObject);
    procedure imgUserBrancoMouseEnter(Sender: TObject);
    procedure imgUserLaranjaMouseLeave(Sender: TObject);
  private
    procedure GET_LineMenu(Sender: TObject);
  public
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

uses
  View.Cliente.Galleti;

{$R *.dfm}



procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
begin
  GET_LineMenu(Sender);
end;

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin
  GET_LineMenu(Sender);
  if not Assigned(ViewClienteGalleti) then
    Application.CreateForm(TViewClienteGalleti, ViewClienteGalleti);

  ViewClienteGalleti.Parent := pnlConteudo;
  ViewClienteGalleti.Show;
end;

procedure TViewPrincipal.btnConfiguracoesClick(Sender: TObject);
begin
  GET_LineMenu(Sender);
end;

procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
begin
  GET_LineMenu(Sender);
end;

procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin
  GET_LineMenu(Sender);
end;

//Pergunta se quer sair do sistema
procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin
  if MessageDlg(' Deseja realmente fechar o sistema?',MtConfirmation, [mbYes,MbNo],0)=mrYes then
    begin
      Application.Terminate;
    end
    else
    abort;

end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin
  GET_LineMenu(btnClientes);

  lblNomeEmpresa.Caption := sRAZAO_FILIAL
end;

procedure TViewPrincipal.GET_LineMenu(Sender: TObject);
begin
  ShapeMenu.Left      := 0;
  ShapeMenu.Top       := 0;
  ShapeMenu.Height    := TSpeedButton(Sender).height;
  ShapeMenu.Top       := TSpeedButton(Sender).top;
  pnlShapeMenu.Repaint;
end;

procedure TViewPrincipal.imgUserBrancoMouseEnter(Sender: TObject);
begin
  imgUserBranco.Visible := False;
  imgUserLaranja.Visible := True;
end;

procedure TViewPrincipal.imgUserLaranjaMouseLeave(Sender: TObject);
begin
  imgUserBranco.Visible := True;
  imgUserLaranja.Visible := False;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseEnter(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := $000FBBD9;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseLeave(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := clWhite;
end;

end.
