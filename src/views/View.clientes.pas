unit View.clientes;

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
  View.base.listas,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,
  Vcl.Buttons,
  dxGDIPlusClasses,
  Vcl.ExtCtrls;

type
  TViewBaseListas1 = class(TViewBaseListas)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewBaseListas1: TViewBaseListas1;

implementation

{$R *.dfm}

end.
