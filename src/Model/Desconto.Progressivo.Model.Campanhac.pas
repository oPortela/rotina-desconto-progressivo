unit Desconto.Progressivo.Model.Campanhac;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Desconto.Progressivo.Model.Conexao, MemDS, DBAccess, Uni;

type
  TdmCampanha = class(TDataModule)
    dsCampanha: TUniDataSource;
    SQLCampanha: TUniQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCampanha: TdmCampanha;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
