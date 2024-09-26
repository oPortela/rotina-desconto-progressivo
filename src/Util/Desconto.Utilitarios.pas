unit Desconto.Utilitarios;

interface

uses
  Vcl.DBGrids, Desconto.Progressivo.Model.Conexao, Desconto.Progressivo.View.Cadastro,
  FireDAC.Comp.Client, Uni;
type
  TUtilitarios = class
    class function LikeFind(Pesquisa : String; Grid : TDBGrid) : String;
    class function pesquisarCodigo(Pesquisa : String; Grid : TDBGrid) : String;
    class function pesquisarData(dataInicio, dataFim : Tdate; Grid : TDBGrid) : String;
    class function GetCodigoCampanha(aValue : TUniQuery) : Integer;
    class function GetCodigoHeader(aValue : TUniQuery) : Integer;
    class function GetNomeFilial(Codigo : Integer; aValue : TUniQuery) : String;
    class function pesquisarCnpj(aValue : String) : String;
  end;

implementation

uses
  System.SysUtils;

{ TUtilitarios }


class function TUtilitarios.GetCodigoCampanha(aValue: TUniQuery): Integer;
begin
  aValue.SQL.Text := 'SELECT MAX(codigo) + 1 FROM pcdescontoc';
  aValue.Open;
  try
    if not aValue.Fields[0].IsNull then
      Result := aValue.Fields[0].AsInteger
    else
      Result := 1; // Caso não haja registros na tabela, retorna 1
  finally
    aValue.Close;
  end;
end;

class function TUtilitarios.GetCodigoHeader(aValue: TUniQuery): Integer;
begin
  aValue.SQL.Text := 'SELECT MAX(codcampanhaflex) + 1 FROM IONV_SYNC.ionvd_campanhas_flex_header';
  aValue.Open;
  try
    if not aValue.Fields[0].IsNull then
      Result := aValue.Fields[0].AsInteger
    else
      Result := 1; // Caso não haja registros na tabela, retorna 1
  finally
    aValue.Close;
  end;
end;

class function TUtilitarios.GetNomeFilial(Codigo : Integer; aValue: TUniQuery): String;
begin
  aValue.Close;
  aValue.SQL.Text := 'SELECT RAZAOSOCIAL FROM PCFILIAL WHERE CODIGO = :CODFILIAL';
  aValue.ParamByName('CODFILIAL').AsInteger := Codigo;
  aValue.Open;
  try
    if not aValue.Fields[0].IsNull then
      Result := aValue.Fields[0].AsString
    else
      Result := 'Filial não encontrada';
  finally
    aValue.Close;
  end;
end;

class function TUtilitarios.LikeFind(Pesquisa: String; Grid: TDBGrid): String;
var
  Lcontador: Integer;
begin
  Result := '';
  if Pesquisa.Trim.IsEmpty then
    exit;

  for Lcontador := 0 to Pred(Grid.Columns.Count) do
  begin
    Result := Result + Grid.Columns.Items[Lcontador].FieldName + ' LIKE ' + QuotedStr('%' + Trim(Pesquisa) + '%') + ' OR ';
  end;

  Result := ' AND ( ' + Copy(Result, 1, Length(Result) - 4) + ')';

end;

class function TUtilitarios.pesquisarCnpj(aValue: String): String;
var
  Contador : Integer;
  CNPJ : String;
begin
  CNPJ := aValue;

  for Contador := Length(CNPJ) downto 1 do
  begin
    if not (CNPJ[Contador] in ['0'..'9']) then
      delete(CNPJ, Contador, 1);
  end;

  Result := CNPJ;
end;

class function TUtilitarios.pesquisarCodigo(Pesquisa: String; Grid: TDBGrid): String;
begin
  Result := '';
  if Pesquisa.Trim.IsEmpty then
    Exit;

  Result := ' AND CODIGO = ( ' + Pesquisa + ' )';
end;



class function TUtilitarios.pesquisarData(dataInicio, dataFim: TDate; Grid: TDBGrid): String;
begin
  Result := '';
  Result := ' AND DTINICIO = ' + QuotedStr(DateToStr(dataInicio)) + ' AND DTFIM = ' + QuotedStr(DateToStr(dataFim));
end;

end.
