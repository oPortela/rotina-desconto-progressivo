unit Desconto.Progressivo.View.AlteracaoFlexHeader;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Desconto.Progressivo.Model.Header,
  System.ImageList, Vcl.ImgList;

type
  TfrmFlexHeader = class(TForm)
    Panel1: TPanel;
    pnlTitulo: TPanel;
    Panel3: TPanel;
    edtPerdesc: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtQuantidade: TEdit;
    Label3: TLabel;
    edtDescricao: TEdit;
    Label4: TLabel;
    edtCodCampanha: TEdit;
    Label5: TLabel;
    edtQtdInicial: TEdit;
    Label6: TLabel;
    edtQtdFinal: TEdit;
    btnAlterarFlexHeader: TButton;
    ImageList2: TImageList;
    btnCancelar: TButton;
    procedure btnAlterarFlexHeaderClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure alterarFlexHeader(CodCampanha : String);
  end;

var
  frmFlexHeader: TfrmFlexHeader;

implementation

uses
  Desconto.Progressivo.Model.Conexao;

{$R *.dfm}

{ TfrmFlexHeader }

procedure TfrmFlexHeader.alterarFlexHeader(CodCampanha: String);
begin
  dmFlexHeader.SQLHeader.SQL.Clear;
  dmFlexHeader.SQLHeader.Close;
  dmFlexHeader.SQLHeader.SQL.Text := 'SELECT * FROM IONV_SYNC.ionvd_campanhas_flex_header WHERE CODCAMPANHAFLEX = :CODIGO;';
  dmFlexHeader.SQLHeader.ParamByName('CODIGO').AsString := CodCampanha;
  dmFlexHeader.SQLHeader.Open;

  edtCodCampanha.Text := dmFlexHeader.SQLHeader.FieldByName('CODCAMPANHAFLEX').AsString;
  edtDescricao.Text := dmFlexHeader.SQLHeader.FieldByName('DESCRICAO').AsString;
  edtPerdesc.Text := dmFlexHeader.SQLHeader.FieldByName('PERCDESC').AsString;
  edtQuantidade.Text := dmFlexHeader.SQLHeader.FieldByName('QUANTIDADE').AsString;
  edtQtdInicial.Text := dmFlexHeader.SQLHeader.FieldByName('QUANTIDADE_INI').AsString;
  edtQtdFinal.Text := dmFlexHeader.SQLHeader.FieldByName('QUANTIDADE_FIM').AsString;
  pnlTitulo.Caption := dmFlexHeader.SQLHeader.FieldByName('DESCRICAO').AsString;
end;

procedure TfrmFlexHeader.btnAlterarFlexHeaderClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja atualizar est� campanha flex?','Aten��o!', MB_YESNO + MB_ICONQUESTION) = idYes then
  begin
    try
      dmConexao.SQLConexao.StartTransaction;

      dmFlexHeader.SQLHeader.SQL.Clear;
      dmFlexHeader.SQLHeader.Close;
      dmFlexHeader.SQLHeader.SQL.Add('UPDATE IONV_SYNC.ionvd_campanhas_flex_header SET DESCRICAO = :DESCRICAO, PERCDESC = :PERCDESC, QUANTIDADE = :QUANTIDADE,' +
                                     'QUANTIDADE_INI = :QTDINICIO, QUANTIDADE_FIM = :QTDFIM WHERE CODCAMPANHAFLEX = :CODCAMPANHA');
      dmFlexHeader.SQLHeader.ParamByName('CODCAMPANHA').AsString := edtCodCampanha.Text;
      dmFlexHeader.SQLHeader.ParamByName('DESCRICAO').AsString := edtDescricao.Text;
      dmFlexHeader.SQLHeader.ParamByName('PERCDESC').AsString := edtPerdesc.Text;
      dmFlexHeader.SQLHeader.ParamByName('QUANTIDADE').AsString := edtQuantidade.Text;
      dmFlexHeader.SQLHeader.ParamByName('QTDINICIO').AsString := edtQtdInicial.Text;
      dmFlexHeader.SQLHeader.ParamByName('QTDFIM').AsString := edtQtdFinal.Text;
      dmFlexHeader.SQLHeader.ExecSQL;

      dmConexao.SQLConexao.Commit;

      ShowMessage('Altera��o realizada com sucesso!');
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

procedure TfrmFlexHeader.btnCancelarClick(Sender: TObject);
begin
  close;
end;

end.
