unit Desconto.Progressivo.View.Incluir.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Desconto.Progressivo.Model.CampanhaItens,
  Desconto.Progressivo.Model.Produtos, Desconto.Progressivo.View.Produtos;

type
  TfrmIncluirProdutos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edtCodProd: TEdit;
    Label2: TLabel;
    edtDescricaoProd: TEdit;
    ImageList2: TImageList;
    btnIncluir: TButton;
    btnCancelar: TButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure edtCodProdKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIncluirProdutos: TfrmIncluirProdutos;

implementation

uses
  Desconto.Progressivo.Model.Conexao, Uni, Desconto.Progressivo.View.Cadastro;

{$R *.dfm}

procedure TfrmIncluirProdutos.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmIncluirProdutos.btnIncluirClick(Sender: TObject);
var
  CodigoCampanha : String;
  ProdutoCadastrado : Boolean;
begin
  CodigoCampanha := frmcadastro.gridCampanha.DataSource.DataSet.FieldByName('CODIGO').Text;

  if edtCodProd.Text = '' then
  begin
    Application.MessageBox('O c�digo do produto n�o pode estar vazio!', 'Aten��o', MB_OK + MB_ICONWARNING);
    edtCodProd.SetFocus;
    abort;
  end;

  dmCampanhaItens.SQLCampanhaItens.SQL.Clear;
  dmCampanhaItens.SQLCampanhaItens.Close;
  dmCampanhaItens.SQLCampanhaItens.SQL.Text := 'SELECT COUNT(*) AS PRODUTO FROM PCDESCONTOI WHERE CODIGO = :CODCAMPANHA AND CODPROD = :CODPROD;';
  dmCampanhaItens.SQLCampanhaItens.ParamByName('CODCAMPANHA').AsString := CodigoCampanha;
  dmCampanhaItens.SQLCampanhaItens.ParamByName('CODPROD').AsString := edtCodProd.Text;
  dmCampanhaItens.SQLCampanhaItens.Open;

  ProdutoCadastrado := dmCampanhaItens.SQLCampanhaItens.FieldByName('PRODUTO').AsInteger > 0;

  if ProdutoCadastrado then
  begin
    Application.MessageBox('Produto j� cadastrado!', 'Aten��o', MB_OK + MB_ICONINFORMATION);
    edtCodProd.SetFocus;
    abort;
  end;


  if Application.MessageBox('Deseja incluir este produto na campanha?', 'Aten��o', MB_YESNO + MB_ICONEXCLAMATION) = IDYES then
  begin
    try
      dmConexao.SQLConexao.StartTransaction;

      dmCampanhaItens.SQLCampanhaItens.SQL.Clear;
      dmCampanhaItens.SQLCampanhaItens.Close;
      dmCampanhaItens.SQLCampanhaItens.SQL.Add('INSERT INTO PCDESCONTOI (CODIGO, SEQUENCIA, CODPROD, QTMINIMA, PERDESC, TIPOPRODUTO, QTMAXIMA, TIPODESCONTO, CODAUXILIAR, ' +
                                               'SYNCFV, DTMXSALTER, PERDESC_ION, CODGRUPOATIVACAO)' +
                                               'VALUES (:CODIGO, (SELECT COALESCE(MAX(SEQUENCIA), 0) + 1 FROM PCDESCONTOI WHERE CODIGO = :CODIGO), :CODPROD, 0, NULL, NULL, ' +
                                               '0, ''A'', NULL, NULL, NULL, 0, :CODIGO)');
      dmCampanhaItens.SQLCampanhaItens.ParamByName('CODIGO').AsString := CodigoCampanha;
      dmCampanhaItens.SQLCampanhaItens.ParamByName('CODPROD').AsString := edtCodProd.Text;
      dmCampanhaItens.SQLCampanhaItens.ExecSQL;

      ShowMessage('Produto Inserido com sucesso!');

      dmConexao.SQLConexao.Commit;
      frmProdutos.PesquisarProdutos(CodigoCampanha);

      edtCodProd.Text := '';
      edtDescricaoProd.Text := '';

      close;
    except
      on E:Exception do
      begin
        dmConexao.SQLConexao.Rollback;
        ShowMessage('Erro ' + E.Message);
      end;
    end;

  end;
end;

procedure TfrmIncluirProdutos.edtCodProdKeyPress(Sender: TObject; var Key: Char);
var
  SQLConsulta: TUniQuery;
begin
  if (Key = #13) or (Key = #9) then
  begin
    SQLConsulta := TUniQuery.Create(nil);
    try
      SQLConsulta.Connection := dmConexao.SQLConexao;
      SQLConsulta.SQL.Text := 'SELECT DESCRICAO FROM PCPRODUT WHERE CODPROD = :CODPROD';
      SQLConsulta.ParamByName('CODPROD').AsString := edtCodProd.Text;
      SQLConsulta.Open;
      if not SQLConsulta.Eof then
      begin
        edtDescricaoProd.Text := SQLConsulta.FieldByName('DESCRICAO').AsString;
      end
      else
      begin
        edtDescricaoProd.Text := 'Descri��o n�o encontrada';
      end;
    finally
      SQLConsulta.Free;
    end;
  end;
end;

end.
