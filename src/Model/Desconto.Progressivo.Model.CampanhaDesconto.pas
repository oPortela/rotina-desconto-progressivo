unit Desconto.Progressivo.Model.CampanhaDesconto;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni,
  Desconto.Progressivo.Model.Conexao;

type
  TdmCampanhaDesconto = class(TDataModule)
    dsCampanhaDesconto: TUniDataSource;
    SQLCampanhaDesconto: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCampanhaDesconto: TdmCampanhaDesconto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
