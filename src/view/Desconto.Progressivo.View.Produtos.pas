unit Desconto.Progressivo.View.Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Desconto.Progressivo.Model.Produtos,
  Vcl.DBGrids, Vcl.StdCtrls, System.ImageList, Vcl.ImgList, Vcl.WinXCtrls;

type
  TfrmProdutos = class(TForm)
    Panel1: TPanel;
    pnlHeaderProdutos: TPanel;
    Panel3: TPanel;
    gridProdutos: TDBGrid;
    btnFechar: TButton;
    ImageList1: TImageList;
    btnIncluir: TButton;
    btnFiltrar: TButton;
    lblNomeCampanha: TLabel;
    Button1: TButton;
    SplitView1: TSplitView;
    pnlGrid: TPanel;
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure PesquisarProdutos(CodCampanha : String);
  end;

var
  frmProdutos: TfrmProdutos;

implementation

uses
  Desconto.Progressivo.View.Incluir.Produtos,
  Desconto.Progressivo.Model.Conexao;

{$R *.dfm}

procedure TfrmProdutos.btnFiltrarClick(Sender: TObject);
var
  CodigoCampanha : String;
  CodigoProduto : String;
begin
  if Application.MessageBox('Deseja realmente excluir este produto?', 'Aten��o', MB_YESNO + MB_ICONQUESTION) <> mrYes then
    abort;
  try
    dmConexao.SQLConexao.StartTransaction;

    CodigoCampanha := dmProdutos.SQLProdutos.FieldByName('CODIGO').AsString;
    CodigoProduto := dmProdutos.SQLProdutos.FieldByName('CODPROD').AsString;

    dmProdutos.SQLProdutos.SQL.Clear;
    dmProdutos.SQLProdutos.Close;
    dmProdutos.SQLProdutos.SQL.Add('DELETE FROM PCDESCONTOI WHERE CODPROD = :CODPROD AND CODIGO = :CODCAMPANHA;');
    dmProdutos.SQLProdutos.ParamByName('CODCAMPANHA').AsString := CodigoCampanha;
    dmProdutos.SQLProdutos.ParamByName('CODPROD').AsString := CodigoProduto;
    dmProdutos.SQLProdutos.ExecSQL;

    ShowMessage('Produto ' + CodigoProduto + ' exclu�do com sucesso!');

    dmConexao.SQLConexao.Commit;
  except
    on E:Exception do
      begin
        dmConexao.SQLConexao.Rollback;
        ShowMessage('Erro ' + E.Message);
      end;
  end;

  PesquisarProdutos(CodigoCampanha);
end;

procedure TfrmProdutos.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmProdutos.btnIncluirClick(Sender: TObject);
begin
  frmIncluirProdutos.show;
end;

procedure TfrmProdutos.PesquisarProdutos(CodCampanha: String);
var
  DescricaoCampanha : String;
begin
  dmProdutos.SQLProdutos.SQL.Clear;
  dmProdutos.SQLProdutos.Close;
  dmProdutos.SQLProdutos.SQL.Text := 'SELECT DESCRICAO ' +
                                     'FROM PCDESCONTOC ' +
                                     'WHERE CODIGO = :CODCAMPANHA';
  dmProdutos.SQLProdutos.ParamByName('CODCAMPANHA').AsString := CodCampanha;
  dmProdutos.SQLProdutos.Open;
  if not dmProdutos.SQLProdutos.Eof then
    DescricaoCampanha := dmProdutos.SQLProdutos.FieldByName('DESCRICAO').AsString
  else
    DescricaoCampanha := 'Descri��o n�o encontrada';
  lblNomeCampanha.Caption := DescricaoCampanha;

  dmProdutos.SQLProdutos.SQL.Clear;
  dmProdutos.SQLProdutos.Close;
  dmProdutos.SQLProdutos.SQL.Text := 'SELECT A.CODIGO, B.CODPROD, B.DESCRICAO FROM PCDESCONTOI A, PCPRODUT B WHERE A.CODPROD = B.CODPROD AND A.CODIGO = :CODCAMPANHA ' +
                                     ' ORDER BY CODPROD';
  dmProdutos.SQLProdutos.ParamByName('CODCAMPANHA').AsString := CodCampanha;
  dmProdutos.SQLProdutos.Open;
end;

end.
