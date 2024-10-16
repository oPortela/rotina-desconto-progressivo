unit Desconto.Progressivo.View.AtivarCampanha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  System.Notification, Vcl.ComCtrls, System.ImageList, Vcl.ImgList, DateUtils;

type
  TfrmAtivarCampanha = class(TForm)
    Panel1: TPanel;
    ImageList2: TImageList;
    Panel2: TPanel;
    Label1: TLabel;
    edtDescricao: TEdit;
    Label2: TLabel;
    edtCodigo: TEdit;
    dateInicio: TDateTimePicker;
    dateFim: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    btnAlterar: TButton;
    Button1: TButton;
    procedure btnAlterarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    dataInicioAnterior : TDateTime;
  public
    { Public declarations }
    procedure pesquisarCampanha(Codigo : String);
  end;

var
  frmAtivarCampanha: TfrmAtivarCampanha;

implementation

uses
  Desconto.Progressivo.Model.Campanhac, Desconto.Progressivo.Model.Conexao,
  Desconto.Progressivo.View.Princ, Desconto.Progressivo.View.Cadastro;

{$R *.dfm}

{ TfrmAtivarCampanha }

procedure TfrmAtivarCampanha.btnAlterarClick(Sender: TObject);
begin
  //dataInicioAnterior := dmCampanha.SQLCampanha.FieldByName('DTINICIO').AsDateTime;
  if DateOf(dateInicio.Date) < DateOf(now) then
  begin
    ShowMessage('A data de Inicio n�o pode ser menor que a data de hoje!');
    dateInicio.SetFocus;
    abort;
  end;


  if Application.MessageBox('Deseja atualizar est� campanha?', 'Aten��o', MB_YESNO + MB_ICONEXCLAMATION) = IDYES then
  try
    dmConexao.SQLConexao.StartTransaction;

    dmCampanha.SQLCampanha.SQL.Clear;
    dmCampanha.SQLCampanha.Close;
    dmCampanha.SQLCampanha.SQL.Add('UPDATE PCDESCONTOC SET DESCRICAO = :DESCRICAO, DTINICIO = :DTINICIO, DTFIM = :DTFIM WHERE CODIGO = :CODCAMPANHA;');
    dmCampanha.SQLCampanha.ParamByName('DESCRICAO').AsString := edtDescricao.Text;
    dmCampanha.SQLCampanha.ParamByName('DTINICIO').AsDateTime := dateInicio.DateTime;
    dmCampanha.SQLCampanha.ParamByName('DTFIM').AsDateTime := dateFim.DateTime;
    dmCampanha.SQLCampanha.ParamByName('CODCAMPANHA').AsString := edtCodigo.Text;
    dmCampanha.SQLCampanha.ExecSQL;

    dmConexao.SQLConexao.Commit;

    ShowMessage('Campanha alterada com sucesso!');

    close;
  except
    on E:Exception do
    begin
      dmConexao.SQLConexao.Rollback;
      ShowMessage('Erro ' + E.Message);
    end;
  end;
end;

procedure TfrmAtivarCampanha.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmAtivarCampanha.pesquisarCampanha(Codigo: String);
begin
  dmCampanha.SQLCampanha.SQL.Clear;
  dmCampanha.SQLCampanha.Close;
  dmCampanha.SQLCampanha.SQL.Text := 'SELECT CODIGO, DESCRICAO, DTINICIO, DTFIM FROM PCDESCONTOC WHERE CODIGO = :CODCAMPANHA;';
  dmCampanha.SQLCampanha.ParamByName('CODCAMPANHA').AsString := Codigo;
  dmCampanha.SQLCampanha.Open;

  edtCodigo.Text := dmCampanha.SQLCampanha.FieldByName('CODIGO').AsString;
  edtDescricao.Text := dmCampanha.SQLCampanha.FieldByName('DESCRICAO').AsString;
  dateInicio.DateTime := dmCampanha.SQLCampanha.FieldByName('DTINICIO').AsDateTime;
  dateFim.DateTime := dmCampanha.SQLCampanha.FieldByName('DTFIM').AsDateTime;
end;

end.
