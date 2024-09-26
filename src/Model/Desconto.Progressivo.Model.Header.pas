unit Desconto.Progressivo.Model.Header;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS,
  Desconto.Progressivo.Model.Conexao;

type
  TdmFlexHeader = class(TDataModule)
    SQLHeader: TUniQuery;
    dsHeader: TUniDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmFlexHeader: TdmFlexHeader;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
