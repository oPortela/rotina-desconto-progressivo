unit Desconto.Progressivo.Model.Items;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, Uni, MemDS, Desconto.Progressivo.Model.Conexao;

type
  TdmItems = class(TDataModule)
    SQLItems: TUniQuery;
    dsItems: TUniDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmItems: TdmItems;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
