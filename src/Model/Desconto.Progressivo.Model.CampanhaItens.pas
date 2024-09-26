unit Desconto.Progressivo.Model.CampanhaItens;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni,
  Desconto.Progressivo.Model.Conexao;

type
  TdmCampanhaItens = class(TDataModule)
    dsCampanhaItens: TUniDataSource;
    SQLCampanhaItens: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCampanhaItens: TdmCampanhaItens;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
