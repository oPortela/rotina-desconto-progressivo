unit Desconto.Progressivo.View.CampanhaProcter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Desconto.Progressivo.Model.ClienteProcter,
  System.ImageList, Vcl.ImgList, Vcl.WinXPanels;

type
  TfrmProcter = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btnPesquisar: TButton;
    cbFiltro: TComboBox;
    edtFiltro: TEdit;
    Label1: TLabel;
    Panel4: TPanel;
    gridClientes: TDBGrid;
    btnIncluir: TButton;
    btnExcluirCliente: TButton;
    btnFechar: TButton;
    ImageList2: TImageList;
    pnlPrincipal: TCardPanel;
    cardConsulta: TCard;
    cardCadastro: TCard;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    edtCliente: TEdit;
    edtFantasia: TEdit;
    edtCNPJ: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtRamo: TEdit;
    edtCodusur: TEdit;
    edtOBS: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtCodCliente: TEdit;
    Label8: TLabel;
    btnPesquisarCliente: TButton;
    btnIncluirCliente: TButton;
    btnVoltar: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure btnExcluirClienteClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnPesquisarClienteClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnIncluirClienteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure pesquisar;
    procedure limparCampos;
  public
    { Public declarations }
  end;

var
  frmProcter: TfrmProcter;

implementation

uses
  Desconto.Utilitarios, Desconto.Progressivo.Model.Conexao;

{$R *.dfm}

procedure TfrmProcter.btnExcluirClienteClick(Sender: TObject);
var
  CodCliente : String;
begin
  CodCliente := gridClientes.DataSource.DataSet.FieldByName('CODCLI').Text;
  if CodCliente = '' then
    abort;


  if Application.MessageBox(PChar('Deseja realmente excluir o código ' + (gridClientes.DataSource.DataSet.FieldByName('CODCLI').text) + ' da campanha?'), 'Atenção', MB_YESNO + MB_ICONEXCLAMATION) = idyes then
  begin
    try
      dmConexao.SQLConexao.StartTransaction;

      dmClientesProcter.SQLClientesProcter.SQL.Clear;
      dmClientesProcter.SQLClientesProcter.Close;
      dmClientesProcter.SQLClientesProcter.SQL.Add('DELETE FROM PCDESCONTORESTRICAO WHERE CODIGON = :CODCLI');
      dmClientesProcter.SQLClientesProcter.ParamByName('CODCLI').AsString := CodCliente;
      dmClientesProcter.SQLClientesProcter.ExecSQL;

      dmConexao.SQLConexao.Commit;
    except
      on E:Exception do
      begin
        dmConexao.SQLConexao.Rollback;
        ShowMessage('Erro ' + E.Message);
      end;
    end;
  end;
end;

procedure TfrmProcter.btnFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmProcter.btnIncluirClick(Sender: TObject);
begin
  pnlPrincipal.ActiveCard := cardCadastro;
end;

procedure TfrmProcter.btnIncluirClienteClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja incluir o cliente nas campanhas?', 'Atenção', MB_YESNO + MB_ICONQUESTION) = idyes then
  begin
    try
      dmConexao.SQLConexao.StartTransaction;

      dmClientesProcter.SQLClientesProcter.SQL.Clear;
      dmClientesProcter.SQLClientesProcter.Close;
      dmClientesProcter.SQLClientesProcter.SQL.Add(
      'INSERT INTO pcdescontorestricao(CODIGO, TIPO, CODIGOA, CODIGON, SYNCFV, DTMXSALTER)' +
        'SELECT   DES.codigo AS CODIGO, ' +
                 '6 as tipo, ' +
                 '0 as codigoa, ' +
                 'CLI.CODCLI AS CODIGON, ' +
                 'null as SYNCFV, ' +
                 'null as DTMXSALTER ' +
        'FROM PCDESCONTOC DES, PCCLIENT CLI ' +
        'WHERE CLI.CODCLI in (:CODCLI) ' +
         'and DES.CODIGO IN (46876, 46897, 46902, 46903, 46904, 46906, 46907, 46908, 47015, 47016, 47017);');
      dmClientesProcter.SQLClientesProcter.ParamByName('CODCLI').AsString := edtCodCliente.Text;
      dmClientesProcter.SQLClientesProcter.ExecSQL;

      Application.MessageBox('Cliente Incluído com sucesso!', 'Sucesso', MB_OK + MB_ICONINFORMATION);
      dmConexao.SQLConexao.Commit;
    except
      on E:Exception do
      begin
        dmConexao.SQLConexao.Rollback;
        ShowMessage('Erro ' + E.Message);
      end;
    end;
  end;

  limparCampos;
end;

procedure TfrmProcter.btnPesquisarClick(Sender: TObject);
begin
  pesquisar;
end;

procedure TfrmProcter.btnPesquisarClienteClick(Sender: TObject);
begin
  dmClientesProcter.SQLClientesProcter.SQL.Clear;
  dmClientesProcter.SQLClientesProcter.Close;
  dmClientesProcter.SQLClientesProcter.SQL.Text := 'SELECT CLIENTE, FANTASIA, CGCENT, CODATV1, CODUSUR1, OBS FROM PCCLIENT WHERE CODCLI = :CODCLI';
  dmClientesProcter.SQLClientesProcter.ParamByName('CODCLI').AsString := edtCodCliente.Text;
  dmClientesProcter.SQLClientesProcter.Open;

  edtCliente.Text := dmClientesProcter.SQLClientesProcter.FieldByName('CLIENTE').Text;
  edtFantasia.Text := dmClientesProcter.SQLClientesProcter.FieldByName('FANTASIA').Text;
  edtCNPJ.Text := dmClientesProcter.SQLClientesProcter.FieldByName('CGCENT').Text;
  edtRamo.Text := dmClientesProcter.SQLClientesProcter.FieldByName('CODATV1').Text;
  edtCodusur.Text := dmClientesProcter.SQLClientesProcter.FieldByName('CODUSUR1').Text;
  edtOBS.Text := dmClientesProcter.SQLClientesProcter.FieldByName('OBS').Text;
end;

procedure TfrmProcter.btnVoltarClick(Sender: TObject);
begin
  pnlPrincipal.ActiveCard := cardConsulta;
  limparCampos;
end;

procedure TfrmProcter.FormCreate(Sender: TObject);
begin
  pnlPrincipal.ActiveCard := cardConsulta;
end;

procedure TfrmProcter.limparCampos;
begin
  edtCodCliente.Text := '';
  edtCliente.Text := '';
  edtFantasia.Text := '';
  edtCNPJ.Text := '';
  edtRamo.Text := '';
  edtCodusur.Text := '';
  edtOBS.Text := '';
end;

procedure TfrmProcter.pesquisar;
begin
  if edtFiltro.Text = '' then
  begin
    Application.MessageBox('O campo de Filtro não pode ser vazio!', 'Atenção', MB_OK + MB_ICONEXCLAMATION);
    edtFiltro.SetFocus;
    abort;
  end;

  case cbFiltro.ItemIndex of
    //Filtrar pelo código do cliente
    0 :
    begin
      dmClientesProcter.SQLClientesProcter.SQL.Clear;
      dmClientesProcter.SQLClientesProcter.Close;
      dmClientesProcter.SQLClientesProcter.SQL.Text := 'SELECT '   +
                                                      'A.CODCLI, '  +
                                                      'A.CLIENTE,'  +
                                                      'A.CGCENT, '  +
                                                      'C.CODIGO, '  +
                                                      'C.DESCRICAO ' +

                                                  'FROM PCCLIENT A ' +

                                                  'INNER JOIN PCDESCONTORESTRICAO B ON A.CODCLI = B.CODIGON ' +
                                                  'INNER JOIN PCDESCONTOC C ON B.CODIGO = C.CODIGO '   +

                                                  'WHERE 1=1 AND A.CODCLI = :CODIGO' ;
      dmClientesProcter.SQLClientesProcter.ParamByName('CODIGO').AsString := edtFiltro.Text;
      dmClientesProcter.SQLClientesProcter.Open;
    end;
    //Filtrar por CNPJ ou CPF
    1 :
    begin
      dmClientesProcter.SQLClientesProcter.SQL.Clear;
      dmClientesProcter.SQLClientesProcter.Close;
      dmClientesProcter.SQLClientesProcter.SQL.Text := 'SELECT '   +
                                                      'A.CODCLI, '  +
                                                      'A.CLIENTE,'  +
                                                      'A.CGCENT, '  +
                                                      'C.CODIGO, '  +
                                                      'C.DESCRICAO ' +

                                                  'FROM PCCLIENT A ' +

                                                  'INNER JOIN PCDESCONTORESTRICAO B ON A.CODCLI = B.CODIGON ' +
                                                  'INNER JOIN PCDESCONTOC C ON B.CODIGO = C.CODIGO '   +

                                                  'WHERE 1=1 AND REPLACE(REPLACE(REPLACE(REPLACE(A.CGCENT,'','',''''),''.'',''''),''-'',''''),''/'','''') = :CGCENT';
      dmClientesProcter.SQLClientesProcter.ParamByName('CGCENT').AsString := edtFiltro.Text;
      dmClientesProcter.SQLClientesProcter.Open;
    end;
  end;
end;

end.
