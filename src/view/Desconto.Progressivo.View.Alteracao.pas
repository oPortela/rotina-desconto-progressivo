unit Desconto.Progressivo.View.Alteracao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels,
  Vcl.StdCtrls, Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Desconto.Progressivo.Model.CampanhaDesconto;

type
  TfrmAlteracaoPolitica = class(TForm)
    CardPanel1: TCardPanel;
    Card1: TCard;
    Panel1: TPanel;
    pnlTitulo: TPanel;
    pnlPrincipal: TPanel;
    dataInicio: TDateTimePicker;
    dataFim: TDateTimePicker;
    edtCodCampanha: TEdit;
    edtDescricao: TEdit;
    edtPerdesc: TEdit;
    edtVlrMaximo: TEdit;
    edtVlrMinino: TEdit;
    edtCodRestricao: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    edtCodCampanhaFlex: TEdit;
    ImageList2: TImageList;
    pnlRodape: TPanel;
    btnCancelar: TButton;
    btnAlterarFlexHeader: TButton;
    procedure btnAlterarFlexHeaderClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    valorAnterior : Double;
  public
    { Public declarations }
    procedure alterarPolitica(CodDesconto : String);
  end;

var
  frmAlteracaoPolitica: TfrmAlteracaoPolitica;

implementation

uses
  Desconto.Progressivo.Model.Conexao;

{$R *.dfm}

{ TfrmAlteracaoPolitica }

procedure TfrmAlteracaoPolitica.alterarPolitica(CodDesconto: String);
begin
  dmCampanhaDesconto.SQLCampanhaDesconto.SQL.Clear;
  dmCampanhaDesconto.SQLCampanhaDesconto.Close;
  dmCampanhaDesconto.SQLCampanhaDesconto.SQL.Text := 'SELECT CODDESCONTO, DESCRICAO, DTINICIO, DTFIM, PERCDESC, CODGRUPOREST, CODCAMPANHAFLEX, VLRMINIMO, VLRMAXIMO ' +
                                                     'FROM PCDESCONTO WHERE CODDESCONTO = :CODIGO';
  dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('CODIGO').AsString := Coddesconto;
  dmCampanhaDesconto.SQLCampanhaDesconto.Open;

  pnlTitulo.Caption := dmCampanhaDesconto.SQLCampanhaDesconto.FieldByName('DESCRICAO').AsString;
  edtCodCampanha.Text := dmCampanhaDesconto.SQLCampanhaDesconto.FieldByName('CODDESCONTO').AsString;
  edtDescricao.Text := dmCampanhaDesconto.SQLCampanhaDesconto.FieldByName('DESCRICAO').AsString;
  dataInicio.Date := dmCampanhaDesconto.SQLCampanhaDesconto.FieldByName('DTINICIO').AsDateTime;
  dataFim.Date := dmCampanhaDesconto.SQLCampanhaDesconto.FieldByName('DTFIM').AsDateTime;
  edtPerdesc.Text := dmCampanhaDesconto.SQLCampanhaDesconto.FieldByName('PERCDESC').AsString;
  edtCodRestricao.Text := dmCampanhaDesconto.SQLCampanhaDesconto.FieldByName('CODGRUPOREST').AsString;
  edtCodCampanhaFlex.Text := dmCampanhaDesconto.SQLCampanhaDesconto.FieldByName('CODCAMPANHAFLEX').AsString;
  edtVlrMinino.Text := dmCampanhaDesconto.SQLCampanhaDesconto.FieldByName('VLRMINIMO').AsString;
  edtVlrMaximo.Text := dmCampanhaDesconto.SQLCampanhaDesconto.FieldByName('VLRMAXIMO').AsString;
end;

procedure TfrmAlteracaoPolitica.btnAlterarFlexHeaderClick(Sender: TObject);
begin
  valorAnterior := StrtoCurr(edtPerdesc.Text);

  if Application.MessageBox('Deseja atualizar est� pol�tica de desconto?','Aten��o!', MB_YESNO + MB_ICONQUESTION) = idYes then
  begin
    try
      dmConexao.SQLConexao.StartTransaction;

      dmCampanhaDesconto.SQLCampanhaDesconto.SQL.Clear;
      dmCampanhaDesconto.SQLCampanhaDesconto.Close;
      dmCampanhaDesconto.SQLCampanhaDesconto.SQL.Add('UPDATE PCDESCONTO SET DESCRICAO = :DESCRICAO, PERCDESC = :PERCDESC, DTINICIO = :DTINICIO, DTFIM = :DTFIM, ' +
                                                'CODGRUPOREST = :CODGRUPOREST, CODCAMPANHAFLEX = :CODCAMPANHAFLEX, VLRMINIMO = :VLRMINIMO, VLRMAXIMO = :VLRMAXIMO ' +
                                                'WHERE CODDESCONTO = :CODIGO');
      dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('CODIGO').AsString := edtCodCampanha.Text;
      dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('DESCRICAO').AsString := edtDescricao.Text;
      dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('PERCDESC').AsString := edtPerdesc.Text;
      dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('DTINICIO').AsDate := dataInicio.Date;
      dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('DTFIM').AsDate := dataFim.Date;
      dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('CODGRUPOREST').AsString := edtCodRestricao.Text;
      dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('CODCAMPANHAFLEX').AsString := edtCodCampanhaFlex.Text;
      dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('VLRMINIMO').AsString := edtVlrMinino.Text;
      dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('VLRMAXIMO').AsString := edtVlrMaximo.Text;

      dmCampanhaDesconto.SQLCampanhaDesconto.SQL.Clear;
      dmCampanhaDesconto.SQLCampanhaDesconto.Close;
      dmCampanhaDesconto.SQLCampanhaDesconto.SQL.Add('INSERT INTO PCLOGALTERACAODADOS(DATA, CODROTINA, TABELA, COLUNA, VALORALFA, VALORALFAANT, OBSERVACOES, CODIGO) ' +
                                                     'VALUES(:DATA, 9861, ''PCDESCONTO'', ''PERCDESC'', :VALORALTERADO, :VALORANTES, :OBS, :CODIGO) ');
      dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('DATA').AsDate := Now;
      dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('VALORALTERADO').AsString := edtPerdesc.Text;
      dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('VALORANTES').AsCurrency := valorAnterior;
      dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('OBS').AsString := 'Valor Anterior: ' + (valorAnterior).ToString + ', Valor Novo: ' + edtPerdesc.Text;
      dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('CODIGO').AsString := edtCodCampanha.Text;

      dmCampanhaDesconto.SQLCampanhaDesconto.ExecSQL;

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

procedure TfrmAlteracaoPolitica.btnCancelarClick(Sender: TObject);
begin
  close;
end;

end.
