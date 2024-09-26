unit Desconto.Progressivo.Model.ClienteProcter;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS,
  Desconto.Progressivo.Model.Conexao;

type
  TdmClientesProcter = class(TDataModule)
    SQLClientesProcter: TUniQuery;
    dsClientesProcter: TUniDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmClientesProcter: TdmClientesProcter;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
