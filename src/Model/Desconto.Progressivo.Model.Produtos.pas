unit Desconto.Progressivo.Model.Produtos;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, Desconto.Progressivo.Model.Conexao;

type
  TdmProdutos = class(TDataModule)
    dsProdutos: TUniDataSource;
    SQLProdutos: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmProdutos: TdmProdutos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
