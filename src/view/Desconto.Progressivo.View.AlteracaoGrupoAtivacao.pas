unit Desconto.Progressivo.View.AlteracaoGrupoAtivacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ComCtrls,
  System.ImageList, Vcl.ImgList;

type
  TfrmAlterarGrupoAtivacao = class(TForm)
    Panel1: TPanel;
    pnlTitulo: TPanel;
    pnlPrincipal: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    edtCodGrupo: TEdit;
    edtDescricao: TEdit;
    edtQuantidade: TEdit;
    pnlRodape: TPanel;
    btnCancelar: TButton;
    btnAlterarGrupoAtivacao: TButton;
    ImageList2: TImageList;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAlterarGrupoAtivacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure alterarGrupoAtivacao(Codigo : String);
  end;

var
  frmAlterarGrupoAtivacao: TfrmAlterarGrupoAtivacao;

implementation

uses
  Desconto.Progressivo.Model.GrupoAtivacao, Desconto.Progressivo.Model.Conexao;

{$R *.dfm}

{ TfrmAlterarGrupoAtivacao }

procedure TfrmAlterarGrupoAtivacao.alterarGrupoAtivacao(Codigo: String);
begin
  dmGrupoAtivacao.SQLGrupoAtivacao.SQL.Clear;
  dmGrupoAtivacao.SQLGrupoAtivacao.Close;
  dmGrupoAtivacao.SQLGrupoAtivacao.SQL.Text := 'SELECT CODGRUPOATIVACAO, QTMINIMA, DESCRICAO FROM IONV_SYNC.ionvd_campanhas_grupos_ativ WHERE CODGRUPOATIVACAO = :CODIGO';
  dmGrupoAtivacao.SQLGrupoAtivacao.ParamByName('CODIGO').AsString := Codigo;
  dmGrupoAtivacao.SQLGrupoAtivacao.Open;

  edtCodGrupo.Text := dmGrupoAtivacao.SQLGrupoAtivacao.FieldByName('CODGRUPOATIVACAO').AsString;
  edtQuantidade.Text := dmGrupoAtivacao.SQLGrupoAtivacao.FieldByName('QTMINIMA').AsString;
  edtDescricao.Text := dmGrupoAtivacao.SQLGrupoAtivacao.FieldByName('DESCRICAO').AsString;
end;

procedure TfrmAlterarGrupoAtivacao.btnAlterarGrupoAtivacaoClick(
  Sender: TObject);
begin
  if Application.MessageBox('Deseja atualizar está política de desconto?','Atenção!', MB_YESNO + MB_ICONQUESTION) = idYes then
  begin
    try
      dmConexao.SQLConexao.StartTransaction;

      dmGrupoAtivacao.SQLGrupoAtivacao.SQL.Clear;
      dmGrupoAtivacao.SQLGrupoAtivacao.Close;
      dmGrupoAtivacao.SQLGrupoAtivacao.SQL.Add('UPDATE IONV_SYNC.ionvd_campanhas_grupos_ativ SET QTMINIMA = :QTD, DESCRICAO = :DESCRICAO WHERE CODGRUPOATIVACAO = :CODIGO;');
      dmGrupoAtivacao.SQLGrupoAtivacao.ParamByName('QTD').AsString := edtQuantidade.Text;
      dmGrupoAtivacao.SQLGrupoAtivacao.ParamByName('DESCRICAO').AsString := edtDescricao.Text;
      dmGrupoAtivacao.SQLGrupoAtivacao.ParamByName('CODIGO').AsString := edtCodGrupo.Text;
      dmGrupoAtivacao.SQLGrupoAtivacao.ExecSQL;

      dmConexao.SQLConexao.Commit;

      ShowMessage('Alteração realizada com sucesso!');
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

procedure TfrmAlterarGrupoAtivacao.btnCancelarClick(Sender: TObject);
begin
  close;
end;

end.
