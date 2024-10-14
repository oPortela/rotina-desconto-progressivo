unit Desconto.Progressivo.View.Princ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    menuCadastro: TMenuItem;
    m: TMenuItem;
    menuAjuda: TMenuItem;
    mnuDescontoProgressivo: TMenuItem;
    mnuRelatorioVenda: TMenuItem;
    Panel1: TPanel;
    mnuConsulta: TMenuItem;
    ClientesProcter1: TMenuItem;
    procedure mnuDescontoProgressivoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ClientesProcter1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  Desconto.Progressivo.View.Cadastro, Desconto.Progressivo.Model.Conexao,
  Desconto.Progressivo.View.CampanhaProcter;

{$R *.dfm}

procedure TfrmPrincipal.ClientesProcter1Click(Sender: TObject);
begin
  frmProcter.Show;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  CODROTINA := '9861';
end;

procedure TfrmPrincipal.mnuDescontoProgressivoClick(Sender: TObject);
begin
  frmCadastro.Show;
end;

end.
