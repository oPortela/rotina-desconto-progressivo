unit Desconto.Progressivo.Model.Conexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, DBAccess, Uni;

type
  TdmConexao = class(TDataModule)
    SQLConexao: TUniConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;
  MATRICULA : Integer;
  PERGUNTA, CODROTINA : String;
  PERMiSSOES : array of Boolean;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TdmConexao.DataModuleCreate(Sender: TObject);
begin
  SQLConexao.Server := ParamStr(3);
  SQLConexao.Password := ParamStr(2);
  SQLConexao.Username := ParamStr(4);
  SQLConexao.Connected := True;
end;

end.
