unit Desconto.Progressivo.View.Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXPanels,
  Vcl.StdCtrls, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, System.ImageList,
  Vcl.ImgList, Datasnap.DBClient, Desconto.Progressivo.Model.Campanhac,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Desconto.Progressivo.Model.Conexao, Vcl.Menus, MemDS, DBAccess, Uni, OracleUniProvider,
  Desconto.Progressivo.Model.Filial, Desconto.Progressivo.Model.Header, Desconto.Progressivo.Model.Items,
  Desconto.Progressivo.Model.GrupoAtivacao, Desconto.Progressivo.Model.CampanhaItens,
  Desconto.Progressivo.Model.CampanhaDesconto, Desconto.Progressivo.View.AlteracaoFlexHeader;

type
  TfrmCadastro = class(TForm)
    Panel10: TPanel;
    pnlPrincipal: TCardPanel;
    cardConsulta: TCard;
    pnlPesquisar: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtPesquisar: TEdit;
    btnPesquisar: TButton;
    dataInicio: TDateTimePicker;
    dataFIm: TDateTimePicker;
    edtCodigo: TEdit;
    pnlGrid: TPanel;
    gridCampanha: TDBGrid;
    pnlBotoes: TPanel;
    cardCadastro: TCard;
    ImageList1: TImageList;
    Label4: TLabel;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnExcluir: TButton;
    btnFechar: TButton;
    pagePrincipal: TPageControl;
    pageGrupoAtivacao: TTabSheet;
    PopupMenu1: TPopupMenu;
    mnuVisualizarProdutos: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    btnSalvar: TButton;
    btnCancelar: TButton;
    ImageList2: TImageList;
    pageFlexHeader: TTabSheet;
    Panel4: TPanel;
    edtCodCampanhaflex: TEdit;
    edtQuantidadeHeader: TEdit;
    edtQtdInicial: TEdit;
    edtQtdFinal: TEdit;
    edtPercdescHeader: TEdit;
    edtDescricaoHeader: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBGrid2: TDBGrid;
    pageRelacionamento: TTabSheet;
    Panel3: TPanel;
    Label5: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    edtCodGrupoAtivacao: TEdit;
    edtQtdMinima: TEdit;
    edtDescricaoGrupo: TEdit;
    Panel6: TPanel;
    gridGrupoAtivacao: TDBGrid;
    incluirGrupoAtivacao: TButton;
    Panel8: TPanel;
    Label6: TLabel;
    edtCodCampanhaRelacionamento: TEdit;
    DBGrid4: TDBGrid;
    Panel9: TPanel;
    btnIncluirRelacionamento: TButton;
    btnIncluirHeader: TButton;
    Label7: TLabel;
    edtCodCampanhaFlexRelacionamento: TEdit;
    pageAtualizarCampanha: TTabSheet;
    Panel5: TPanel;
    Label9: TLabel;
    edtCodCampanhaItens: TEdit;
    btnAtualizarCampanhaItens: TButton;
    gridCampanhaItens: TDBGrid;
    btnPesquisarCampanhaItens: TButton;
    edtRouleid: TEdit;
    Label8: TLabel;
    pageAmarracao: TTabSheet;
    DBGrid3: TDBGrid;
    Panel7: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    edtCodDesconto: TEdit;
    btnAtulizarAmarracao: TButton;
    edtCodCampanhaFlex561: TEdit;
    btnPEsquisarDesconto: TButton;
    alterarCampanha: TMenuItem;
    cardAlteracao: TCard;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Panel12: TPanel;
    Label23: TLabel;
    edtPesquisarGrupoAtivacao: TEdit;
    btnPesquisarGrupoAtivacao: TButton;
    Panel13: TPanel;
    gridGrupoAtivacaoAlterar: TDBGrid;
    TabSheet3: TTabSheet;
    Panel14: TPanel;
    btnPesquisarFlexHeader: TButton;
    DBGrid6: TDBGrid;
    TabSheet4: TTabSheet;
    Panel15: TPanel;
    btnPesquisarRelacionamento: TButton;
    DBGrid7: TDBGrid;
    Panel16: TPanel;
    TabSheet5: TTabSheet;
    gridPolitica: TDBGrid;
    Panel17: TPanel;
    btnPesquisarDescontoAlt: TButton;
    Panel18: TPanel;
    Panel19: TPanel;
    Button8: TButton;
    Button9: TButton;
    cbFiltro: TComboBox;
    edtFiltroDesconto: TEdit;
    Label20: TLabel;
    cbFiltroRelacionamento: TComboBox;
    edtRelacionamento: TEdit;
    Label21: TLabel;
    cbFlexHeader: TComboBox;
    edtFlexHeader: TEdit;
    Label27: TLabel;
    popFlexHeader: TPopupMenu;
    mnuAlterarFlexHeader: TMenuItem;
    popPolitica: TPopupMenu;
    mnuAlterarPolitica: TMenuItem;
    popGrupoAtivacao: TPopupMenu;
    mnuALterarGrupoAtivacao: TMenuItem;
    cbFiltroGrupoAtivacao: TComboBox;
    cbOrdenacao: TComboBox;
    Label22: TLabel;
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    //procedure FormShow(Sender: TObject);
    //procedure pageCampanhacShow(Sender: TObject);
    procedure pageFlexHeaderShow(Sender: TObject);
    procedure mnuVisualizarProdutosClick(Sender: TObject);
    procedure pageGrupoAtivacaoShow(Sender: TObject);
    procedure pageRelacionamentoShow(Sender: TObject);
    procedure incluirGrupoAtivacaoClick(Sender: TObject);
    procedure edtCodGrupoAtivacaoKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirHeaderClick(Sender: TObject);
    procedure btnIncluirRelacionamentoClick(Sender: TObject);
    procedure btnPesquisarCampanhaItensClick(Sender: TObject);
    procedure btnAtualizarCampanhaItensClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAtulizarAmarracaoClick(Sender: TObject);
    procedure btnPEsquisarDescontoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure alterarCampanhaClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnPesquisarDescontoAltClick(Sender: TObject);
    procedure btnPesquisarRelacionamentoClick(Sender: TObject);
    procedure btnPesquisarFlexHeaderClick(Sender: TObject);
    procedure mnuAlterarFlexHeaderClick(Sender: TObject);
    procedure mnuAlterarPoliticaClick(Sender: TObject);
    procedure btnPesquisarGrupoAtivacaoClick(Sender: TObject);
    procedure mnuALterarGrupoAtivacaoClick(Sender: TObject);
    //procedure edtCodFilialEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

uses
  Desconto.Utilitarios, Desconto.Progressivo.View.Produtos,
  Desconto.Progressivo.Model.Produtos,
  Desconto.Progressivo.View.AtivarCampanha,
  Desconto.Progressivo.View.Alteracao,
  Desconto.Progressivo.View.AlteracaoGrupoAtivacao;


{$R *.dfm}

{ TfrmCadastro }

procedure TfrmCadastro.alterarCampanhaClick(Sender: TObject);
begin
  frmAtivarCampanha.Show;
  frmAtivarCampanha.pesquisarCampanha(gridCampanha.DataSource.DataSet.FieldByName('CODIGO').Text);
end;

procedure TfrmCadastro.btnAlterarClick(Sender: TObject);
begin
  pnlPrincipal.ActiveCard := cardAlteracao;
  pagePrincipal.ActivePage := pageAtualizarCampanha;
end;

procedure TfrmCadastro.btnAtualizarCampanhaItensClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja atualizar est� campanha?', 'Aten��o', MB_YESNO + MB_ICONQUESTION) = IDYES then
  begin
    try
      dmConexao.SQLConexao.StartTransaction;

      dmCampanhaItens.SQLCampanhaItens.Close;
      dmCampanhaItens.SQLCampanhaItens.SQL.Clear;
      dmCampanhaItens.SQLCampanhaItens.SQL.Add('UPDATE PCDESCONTOI SET QTMINIMA = 0, PERDESC = NULL, CODAUXILIAR = NULL, PERDESC_ION = 0, ' +
                                               'CODGRUPOATIVACAO = :CODCAMPANHA WHERE CODIGO = :CODCAMPANHA');
      dmCampanhaItens.SQLCampanhaItens.ParamByName('CODCAMPANHA').AsString := edtCodCampanhaItens.Text;
      dmCampanhaItens.SQLCampanhaItens.ExecSQL;

      dmCampanhaItens.SQLCampanhaItens.Close;
      dmCampanhaItens.SQLCampanhaItens.SQL.Clear;
      dmCampanhaItens.SQLCampanhaItens.SQL.add('UPDATE PCDESCONTOC SET CAMPANHAPARCIAL = ''S'', UTILIZAGRUPOATIVACAO = ''Y'', IONSYNC = ''Y'', ' +
                                               'CODGRUPOCAMPANHA = :ROULEID WHERE CODIGO = :CODCAMPANHA');
      dmCampanhaItens.SQLCampanhaItens.ParamByName('ROULEID').AsString := edtRouleid.Text;
      dmCampanhaItens.SQLCampanhaItens.ParamByName('CODCAMPANHA').AsString := edtCodCampanhaItens.Text;
      dmCampanhaItens.SQLCampanhaItens.ExecSQL;

      dmConexao.SQLConexao.Commit;
    except
      on E:Exception do
      begin
        dmConexao.SQLConexao.Rollback;
        ShowMessage('Erro ' + E.Message);
      end;
    end;

  end
  else
    abort;

  dmCampanhaItens.SQLCampanhaItens.SQL.Clear;
  dmCampanhaItens.SQLCampanhaItens.Close;
  dmCampanhaItens.SQLCampanhaItens.SQL.Text := 'SELECT * FROM PCDESCONTOI WHERE CODIGO = :CODCAMPANHA';
  dmCampanhaItens.SQLCampanhaItens.ParamByName('CODCAMPANHA').AsString := edtCodCampanhaItens.Text;
  dmCampanhaItens.SQLCampanhaItens.Open;

  edtCodCampanhaItens.Text := '';
  edtRouleid.Text := '';
end;

procedure TfrmCadastro.btnCancelarClick(Sender: TObject);
begin
  pnlPrincipal.ActiveCard := cardConsulta;
  abort;
end;

procedure TfrmCadastro.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastro.btnIncluirClick(Sender: TObject);
begin
  pnlPrincipal.ActiveCard := cardCadastro;
  pagePrincipal.ActivePage := pageAtualizarCampanha;
end;

procedure TfrmCadastro.btnIncluirHeaderClick(Sender: TObject);
begin
  if edtPercdescHeader.Text = '' then
  begin
    Application.MessageBox('O campo de desconto n�o pode ser vazio', 'Aten��o', MB_OK + MB_ICONWARNING);
    edtPercdescHeader.SetFocus;
    abort;
  end;

  if edtDescricaoHeader.Text = '' then
  begin
    Application.MessageBox('O campo de descri��o n�o pode ser vazio', 'Aten��o', MB_OK + MB_ICONWARNING);
    edtDescricaoHeader.SetFocus;
    abort;
  end;

  if edtQuantidadeHeader.Text = '' then
  begin
    Application.MessageBox('O campo de quantidade n�o pode ser vazio', 'Aten��o', MB_OK + MB_ICONWARNING);
    edtQuantidadeHeader.SetFocus;
    abort;
  end;

  if edtQtdInicial.Text = '' then
  begin
    Application.MessageBox('O campo de quantidade inicial n�o pode ser vazio', 'Aten��o', MB_OK + MB_ICONWARNING);
    edtQtdInicial.SetFocus;
    abort;
  end;

  if edtQtdFinal.Text = '' then
  begin
    Application.MessageBox('O campo de quantidade final n�o pode ser vazio', 'Aten��o', MB_OK + MB_ICONWARNING);
    edtQtdFinal.SetFocus;
    abort;
  end;

  try
    dmConexao.SQLConexao.StartTransaction;

    dmFlexHeader.SQLHeader.Close;
    dmFlexHeader.SQLHeader.SQL.Text := 'INSERT INTO IONV_SYNC.ionvd_campanhas_flex_header(CODCAMPANHAFLEX, QUANTIDADE, QUANTIDADE_INI, QUANTIDADE_FIM, ' +
                                       'METODOLOGIA, PERCDESC, CODGRUPOFLEX, DESCRICAO)' +
                                       'VALUES (:CODCAMPANHAFLEX, :QUANTIDADE, :QUANTIDADE_INI, :QUANTIDADE_FIM, :METODOLOGIA, :PERCDESC, NULL, :DESCRICAO)';
    dmFlexHeader.SQLHeader.ParamByName('CODCAMPANHAFLEX').AsInteger := StrToInt(edtCodCampanhaflex.text);
    dmFlexHeader.SQLHeader.ParamByName('QUANTIDADE').AsInteger := StrToInt(edtQuantidadeHeader.text);
    dmFlexHeader.SQLHeader.ParamByName('QUANTIDADE_INI').AsInteger := StrToInt(edtQtdInicial.text);
    dmFlexHeader.SQLHeader.ParamByName('QUANTIDADE_FIM').AsInteger := StrToInt(edtQtdFinal.text);
    dmFlexHeader.SQLHeader.ParamByName('METODOLOGIA').AsInteger := 5;
    dmFlexHeader.SQLHeader.ParamByName('PERCDESC').AsInteger := StrToInt(edtPercdescHeader.text);
    dmFlexHeader.SQLHeader.ParamByName('DESCRICAO').AsString := edtDescricaoHeader.text;
    dmFlexHeader.SQLHeader.ExecSQL;

    dmConexao.SQLConexao.Commit;
  except
    on E:Exception do
      begin
        dmConexao.SQLConexao.Rollback;
        ShowMessage('Erro ' + E.Message);
      end;
  end;

  dmFlexHeader.SQLHeader.Close;
  dmFlexHeader.SQLHeader.SQL.Text := 'SELECT * FROM IONV_SYNC.ionvd_campanhas_flex_header WHERE 1=1 ';
  dmFlexHeader.SQLHeader.Open;

  edtCodCampanhaflex.Text := TUtilitarios.GetCodigoHeader(dmCampanha.SQLCampanha).ToString;
  edtQuantidadeHeader.Text := '';
  edtQtdInicial.Text := '';
  edtQtdFinal.Text := '';
  edtPercdescHeader.Text := '';
  edtDescricaoHeader.Text := '';
end;

procedure TfrmCadastro.btnIncluirRelacionamentoClick(Sender: TObject);
begin
  if edtCodCampanhaRelacionamento.Text = '' then
  begin
    Application.MessageBox('O c�digo n�o pode ser vazio', 'Aten��o', MB_OK + MB_ICONWARNING);
    edtCodCampanhaRelacionamento.SetFocus;
    abort;
  end;

  if edtCodCampanhaFlexRelacionamento.Text = '' then
  begin
    Application.MessageBox('A quantidade n�o pode ser vazia', 'Aten��o', MB_OK + MB_ICONWARNING);
    edtCodCampanhaFlexRelacionamento.SetFocus;
    abort;
  end;

  try
    dmConexao.SQLConexao.StartTransaction;

    dmItems.SQLItems.Close;
    dmItems.SQLItems.SQL.Text := 'INSERT INTO IONV_SYNC.ionvd_campanhas_flex_items(CODCAMPANHAFLEX, CODCAMPANHA)' +
                                                  'VALUES (:CODCAMPANHAFLEX, :CODCAMPANHA)';
    dmItems.SQLItems.ParamByName('CODCAMPANHAFLEX').AsInteger := StrToInt(edtCodCampanhaFlexRelacionamento.text);
    dmItems.SQLItems.ParamByName('CODCAMPANHA').AsInteger := StrToInt(edtCodCampanhaRelacionamento.text);
    dmItems.SQLItems.ExecSQL;

    dmConexao.SQLConexao.Commit;
  except
    on E:Exception do
      begin
        dmConexao.SQLConexao.Rollback;
        ShowMessage('Erro ' + E.Message);
      end;
  end;

  dmItems.SQLItems.Close;
  dmItems.SQLItems.SQL.Text := 'SELECT * FROM IONV_SYNC.ionvd_campanhas_flex_items WHERE 1=1 ';
  dmItems.SQLItems.Open;

  edtCodCampanhaRelacionamento.Text := '';
  edtCodCampanhaFlexRelacionamento.Text := '';
end;

procedure TfrmCadastro.btnPesquisarCampanhaItensClick(Sender: TObject);
var
  CODIGO : String;
begin
  CODIGO := edtCodCampanhaItens.Text;

  dmCampanhaItens.SQLCampanhaItens.Close;
  dmCampanhaItens.SQLCampanhaItens.SQL.Text := 'SELECT * FROM PCDESCONTOI WHERE CODIGO = :CODCAMPANHA';
  dmCampanhaItens.SQLCampanhaItens.ParamByName('CODCAMPANHA').AsString := CODIGO;
  dmCampanhaItens.SQLCampanhaItens.Open;
end;

procedure TfrmCadastro.btnPesquisarClick(Sender: TObject);
var
  FiltroPesquisa: String;
  CamposValidos: Boolean;
  Ordenacao : String;
begin
  CamposValidos := True;

  // Verifica se ambos os campos de data foram preenchidos corretamente
  if dataInicio.Checked and not dataFim.Checked then
  begin
    Application.MessageBox('O campo de data fim precisa ser preenchido!', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    dataFim.SetFocus;
    CamposValidos := False;
  end
  else if not dataInicio.Checked and dataFim.Checked then
  begin
    Application.MessageBox('O campo de data de in�cio precisa ser preenchido!', 'Aten��o', MB_OK + MB_ICONEXCLAMATION);
    dataInicio.SetFocus;
    CamposValidos := False;
  end;

  if not CamposValidos then
    Exit;

  // Constru��o do filtro de pesquisa
  FiltroPesquisa := '';
  if (edtCodigo.Text = '') and (edtPesquisar.Text <> '') then
  begin
    FiltroPesquisa := TUtilitarios.LikeFind(edtPesquisar.Text, gridCampanha);
  end
  else if (edtCodigo.Text <> '') and (edtPesquisar.Text = '') then
  begin
    FiltroPesquisa := TUtilitarios.pesquisarCodigo(edtCodigo.Text, gridCampanha);
  end
  else if dataInicio.Checked and dataFim.Checked then
  begin
    FiltroPesquisa := TUtilitarios.pesquisarData(dataInicio.Date, dataFim.Date, gridCampanha);
  end;

  case cbOrdenacao.ItemIndex of
    0 : Ordenacao := 'CODIGO';
    1 : Ordenacao := 'DESCRICAO';
    2 : Ordenacao := 'DTINICIO';
    3 : Ordenacao := 'DTFIM';
  end;


  // Executa a consulta
  dmCampanha.SQLCampanha.Close;
  dmCampanha.SQLCampanha.SQL.Clear;
  dmCampanha.SQLCampanha.SQL.Text := 'SELECT * FROM PCDESCONTOC WHERE 1=1 ' + FiltroPesquisa + ' ORDER BY ' + Ordenacao;
  //ShowMessage(dmCampanha.SQLCampanha.SQL.Text);
  dmCampanha.SQLCampanha.Open;
end;


procedure TfrmCadastro.btnPesquisarDescontoAltClick(Sender: TObject);
var
  Filtro : String;
begin
  case cbFiltro.ItemIndex of
    -1 : Filtro := '';
    0 : Filtro := 'AND CODDESCONTO = :FILTRO';
    1 : Filtro := TUtilitarios.LikeFind(edtFiltroDesconto.Text, gridPolitica); // Gera a cl�usula LIKE
  end;

  dmCampanhaDesconto.SQLCampanhaDesconto.SQL.Clear;
  dmCampanhaDesconto.SQLCampanhaDesconto.Close;
  dmCampanhaDesconto.SQLCampanhaDesconto.SQL.Text := 'SELECT * FROM PCDESCONTO WHERE 1=1 ' + Filtro;

  if cbFiltro.ItemIndex = 0 then
    dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('FILTRO').AsString := edtFiltroDesconto.Text;

  dmCampanhaDesconto.SQLCampanhaDesconto.Open;
end;

procedure TfrmCadastro.btnSalvarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja salvar as altera��es?', 'Salvar', MB_YESNO + MB_ICONEXCLAMATION) = IDYES then
  begin
    try
      dmConexao.SQLConexao.Commit;
    except
      on E:Exception do
      begin
        dmConexao.SQLConexao.Rollback;
        ShowMessage('Erro ' + E.Message);
      end;
    end;

    Application.MessageBox('Registro inclu�do com sucesso!', 'Sucesso', MB_OK + MB_ICONINFORMATION);
    pnlPrincipal.ActiveCard := cardConsulta;
  end;
end;

procedure TfrmCadastro.btnPEsquisarDescontoClick(Sender: TObject);
begin
  dmCampanhaDesconto.SQLCampanhaDesconto.Close;
  dmCampanhaDesconto.SQLCampanhaDesconto.SQL.Text := 'SELECT * FROM PCDESCONTO WHERE CODDESCONTO = :CODDESCONTO';
  dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('CODDESCONTO').AsString := edtCodDesconto.Text;
  dmCampanhaDesconto.SQLCampanhaDesconto.Open;
end;

procedure TfrmCadastro.btnPesquisarFlexHeaderClick(Sender: TObject);
var
  Filtro: String;
  Descricao: String;
begin
  case cbFlexHeader.ItemIndex of
    0: Filtro := ' CODCAMPANHAFLEX ';
    1: Filtro := ' PERCDESC ';
    2: Filtro := ' DESCRICAO LIKE ';
  end;

  dmFlexHeader.SQLHeader.SQL.Clear;
  dmFlexHeader.SQLHeader.Close;

  if cbFlexHeader.ItemIndex <> 2 then
    begin
      dmFlexHeader.SQLHeader.SQL.Text := 'SELECT * FROM IONV_SYNC.ionvd_campanhas_flex_header WHERE ' + Filtro + ' = :PARAMETRO';
      dmFlexHeader.SQLHeader.ParamByName('PARAMETRO').AsString := edtFlexHeader.Text;
    end
  else if (cbFlexHeader.ItemIndex = -1) and (edtFlexHeader.Text = '') then
    begin
      dmFlexHeader.SQLHeader.SQL.Text := 'SELECT * FROM IONV_SYNC.ionvd_campanhas_flex_header';
    end
  else
    begin
      Descricao := '%' + edtFlexHeader.Text + '%';
      dmFlexHeader.SQLHeader.SQL.Text := 'SELECT * FROM IONV_SYNC.ionvd_campanhas_flex_header WHERE ' + Filtro + ':PARAMETRO';
      dmFlexHeader.SQLHeader.ParamByName('PARAMETRO').AsString := Descricao;
    end;

  dmFlexHeader.SQLHeader.Open;
end;


procedure TfrmCadastro.btnPesquisarGrupoAtivacaoClick(Sender: TObject);
var
  Filtro : String;
  Descricao : String;
begin
  case cbFiltroGrupoAtivacao.ItemIndex of
    0 : Filtro := 'CODGRUPOATIVACAO';
    1 : Filtro := 'DESCRICAO';
  end;

  dmGrupoAtivacao.SQLGrupoAtivacao.SQL.Clear;
  dmGrupoAtivacao.SQLGrupoAtivacao.Close;

  if cbFiltroGrupoAtivacao.ItemIndex = 1 then
  begin
    Descricao := '%' + edtPesquisarGrupoAtivacao.Text + '%';
    dmGrupoAtivacao.SQLGrupoAtivacao.SQL.Text := 'SELECT * FROM IONV_SYNC.IONVD_CAMPANHAS_GRUPOS_ATIV WHERE ' + Filtro + ' LIKE :DESCRICAO';
    dmGrupoAtivacao.SQLGrupoAtivacao.ParamByName('DESCRICAO').AsString := Descricao;
  end
  else
  begin
    dmGrupoAtivacao.SQLGrupoAtivacao.SQL.Text := 'SELECT * FROM IONV_SYNC.IONVD_CAMPANHAS_GRUPOS_ATIV WHERE ' + Filtro + ' = :CODIGO';
    dmGrupoAtivacao.SQLGrupoAtivacao.ParamByName('CODIGO').AsString := edtPesquisarGrupoAtivacao.Text;
  end;

  dmGrupoAtivacao.SQLGrupoAtivacao.Open;
end;

procedure TfrmCadastro.btnPesquisarRelacionamentoClick(Sender: TObject);
var
  Filtro : String;
begin
  case cbFiltroRelacionamento.ItemIndex of
    0 : Filtro := ' CODCAMPANHA ';
    1 : Filtro := ' CODCAMPANHAFLEX ';
  end;

  dmItems.SQLItems.SQL.Clear;
  dmItems.SQLItems.Close;
  dmItems.SQLItems.SQL.Text := 'SELECT * FROM IONV_SYNC.ionvd_campanhas_flex_items WHERE ' + Filtro + ' = :PARAMETRO';
  dmItems.SQLItems.ParamByName('PARAMETRO').AsString := edtRelacionamento.Text;
  dmItems.SQLItems.Open;
end;

procedure TfrmCadastro.btnAtulizarAmarracaoClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja atualizar est� campanha?', 'Aten��o', MB_YESNO + MB_ICONEXCLAMATION) = IDYES then
  begin
    try
      dmConexao.SQLConexao.StartTransaction;

      dmCampanhaDesconto.SQLCampanhaDesconto.SQL.Clear;
      dmCampanhaDesconto.SQLCampanhaDesconto.Close;
      dmCampanhaDesconto.SQLCampanhaDesconto.SQL.Add('UPDATE PCDESCONTO SET CODCAMPANHAFLEX = :CODCAMPANHAFLEX WHERE CODDESCONTO = :CODDESCONTO');
      dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('CODDESCONTO').AsString := edtCodDesconto.Text;
      dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('CODCAMPANHAFLEX').AsString := edtCodCampanhaFlex561.Text;

      dmCampanhaDesconto.SQLCampanhaDesconto.ExecSQL;

      dmConexao.SQLConexao.Commit;
    except
      on E:Exception do
      begin
        dmConexao.SQLConexao.Rollback;
        ShowMessage('Erro ' + E.Message);
      end;
    end;
  end;

  dmCampanhaDesconto.SQLCampanhaDesconto.Close;
  dmCampanhaDesconto.SQLCampanhaDesconto.SQL.Text := 'SELECT * FROM PCDESCONTO WHERE CODDESCONTO = :CODDESCONTO';
  dmCampanhaDesconto.SQLCampanhaDesconto.ParamByName('CODDESCONTO').AsString := edtCodDesconto.Text;
  dmCampanhaDesconto.SQLCampanhaDesconto.Open;

  edtCodDesconto.Text := '';
  edtCodCampanhaFlex561.Text := '';

end;

procedure TfrmCadastro.edtCodGrupoAtivacaoKeyPress(Sender: TObject; var Key: Char);
var
  SQLConsulta: TUniQuery;
begin
  if (Key = #13) or (Key = #9) then
  begin
    SQLConsulta := TUniQuery.Create(nil);
    try
      SQLConsulta.Connection := dmConexao.SQLConexao;
      SQLConsulta.SQL.Text := 'SELECT DESCRICAO FROM PCDESCONTOC WHERE CODIGO = :CODGRUPO';
      SQLConsulta.ParamByName('CODGRUPO').AsString := edtCodGrupoAtivacao.Text;
      SQLConsulta.Open;
      if not SQLConsulta.Eof then
      begin
        edtDescricaoGrupo.Text := SQLConsulta.FieldByName('DESCRICAO').AsString;
      end
      else
      begin
        edtDescricaoGrupo.Text := 'Descri��o n�o encontrada';
      end;
    finally
      SQLConsulta.Free;
    end;
  end;
end;

procedure TfrmCadastro.FormShow(Sender: TObject);
begin
  pnlPrincipal.ActiveCard := cardConsulta;
end;

procedure TfrmCadastro.incluirGrupoAtivacaoClick(Sender: TObject);
begin
  if edtCodGrupoAtivacao.Text = '' then
  begin
    Application.MessageBox('O c�digo n�o pode ser vazio', 'Aten��o', MB_OK + MB_ICONWARNING);
    edtCodGrupoAtivacao.SetFocus;
    abort;
  end;

  if edtQtdMinima.Text = '' then
  begin
    Application.MessageBox('A quantidade n�o pode ser vazia', 'Aten��o', MB_OK + MB_ICONWARNING);
    edtQtdMinima.SetFocus;
    abort;
  end;

  try
    dmConexao.SQLConexao.StartTransaction;

    dmGrupoAtivacao.SQLGrupoAtivacao.Close;
    dmGrupoAtivacao.SQLGrupoAtivacao.SQL.Text := 'INSERT INTO IONV_SYNC.IONVD_CAMPANHAS_GRUPOS_ATIV(CODGRUPOATIVACAO, QTMINIMA, DESCRICAO)' +
                                                  'VALUES (:CODGRUPO, :QTMINIMA, :DESCRICAO)';
    dmGrupoAtivacao.SQLGrupoAtivacao.ParamByName('CODGRUPO').AsInteger := StrToInt(edtCodGrupoAtivacao.text);
    dmGrupoAtivacao.SQLGrupoAtivacao.ParamByName('QTMINIMA').AsInteger := StrToInt(edtQtdMinima.text);
    dmGrupoAtivacao.SQLGrupoAtivacao.ParamByName('DESCRICAO').AsString := edtDescricaoGrupo.text;
    dmGrupoAtivacao.SQLGrupoAtivacao.ExecSQL;

    dmConexao.SQLConexao.Commit;
  except
    on E:Exception do
      begin
        dmConexao.SQLConexao.Rollback;
        ShowMessage('Erro ' + E.Message);
      end;
  end;

  dmGrupoAtivacao.SQLGrupoAtivacao.Close;
  dmGrupoAtivacao.SQLGrupoAtivacao.SQL.Text := 'SELECT * FROM IONV_SYNC.IONVD_CAMPANHAS_GRUPOS_ATIV WHERE 1=1 ';
  dmGrupoAtivacao.SQLGrupoAtivacao.Open;

  edtCodGrupoAtivacao.Text := '';
  edtDescricaoGrupo.Text := '';
  edtQtdMinima.Text := '';
end;

procedure TfrmCadastro.mnuAlterarFlexHeaderClick(Sender: TObject);
begin
  frmFlexHeader.alterarFlexHeader(dmFlexHeader.SQLHeader.FieldByName('CODCAMPANHAFLEX').AsString);
  frmFlexHeader.Show;
end;

procedure TfrmCadastro.mnuALterarGrupoAtivacaoClick(Sender: TObject);
begin
  frmAlterarGrupoAtivacao.alterarGrupoAtivacao(gridGrupoAtivacaoAlterar.DataSource.DataSet.FieldByName('CODGRUPOATIVACAO').Text);
  frmAlterarGrupoAtivacao.Show;
end;

procedure TfrmCadastro.mnuAlterarPoliticaClick(Sender: TObject);
begin
  frmAlteracaoPolitica.alterarPolitica(gridPolitica.DataSource.DataSet.FieldByName('CODDESCONTO').Text);
  frmAlteracaoPolitica.Show;
end;

procedure TfrmCadastro.mnuVisualizarProdutosClick(Sender: TObject);
begin
  frmProdutos.PesquisarProdutos(gridCampanha.DataSource.DataSet.FieldByName('CODIGO').Text);
  frmProdutos.Show;
end;

procedure TfrmCadastro.pageGrupoAtivacaoShow(Sender: TObject);
begin
  dmGrupoAtivacao.SQLGrupoAtivacao.Close;
  dmGrupoAtivacao.SQLGrupoAtivacao.SQL.Text := 'SELECT * FROM IONV_SYNC.IONVD_CAMPANHAS_GRUPOS_ATIV WHERE 1=1 ';
  dmGrupoAtivacao.SQLGrupoAtivacao.Open;
end;

procedure TfrmCadastro.pageFlexHeaderShow(Sender: TObject);
var
  FiltroPesquisa : String;
begin
  dmFlexHeader.SQLHeader.SQL.Clear;
  dmFlexHeader.SQLHeader.Close;
  dmFlexHeader.SQLHeader.SQL.Text := 'SELECT * FROM IONV_SYNC.ionvd_campanhas_flex_header WHERE 1=1';
  dmFlexHeader.SQLHeader.Open;
  edtCodCampanhaflex.Text := TUtilitarios.GetCodigoHeader(dmCampanha.SQLCampanha).ToString;
end;

procedure TfrmCadastro.pageRelacionamentoShow(Sender: TObject);
begin
  dmItems.SQLItems.SQL.Clear;
  dmItems.SQLItems.Close;
  dmItems.SQLItems.SQL.Text := 'SELECT * FROM IONV_SYNC.ionvd_campanhas_flex_items WHERE 1=1 ';
  dmItems.SQLItems.Open;
end;

end.
