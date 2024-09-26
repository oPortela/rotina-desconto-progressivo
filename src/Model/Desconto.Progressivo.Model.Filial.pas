unit Desconto.Progressivo.Model.Filial;

interface

uses
  System.SysUtils, System.Classes, Data.DB, MemDS, DBAccess, Uni, Desconto.Progressivo.Model.Conexao;

type
  TdmFilial = class(TDataModule)
    SQLFilial: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFilial: TdmFilial;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
