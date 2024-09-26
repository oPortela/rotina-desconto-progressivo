unit Desconto.Progressivo.Model.GrupoAtivacao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS, Desconto.Progressivo.Model.Conexao;

type
  TdmGrupoAtivacao = class(TDataModule)
    SQLGrupoAtivacao: TUniQuery;
    dsGrupoAtivacao: TUniDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmGrupoAtivacao: TdmGrupoAtivacao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
