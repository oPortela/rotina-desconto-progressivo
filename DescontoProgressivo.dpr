program DescontoProgressivo;

uses
  Vcl.Forms,
  Desconto.Progressivo.View.Princ in 'src\view\Desconto.Progressivo.View.Princ.pas' {frmPrincipal},
  Desconto.Progressivo.View.Cadastro in 'src\view\Desconto.Progressivo.View.Cadastro.pas' {frmCadastro},
  Desconto.Progressivo.Model.Conexao in 'src\Model\Desconto.Progressivo.Model.Conexao.pas' {dmConexao: TDataModule},
  Desconto.Progressivo.Model.Campanhac in 'src\Model\Desconto.Progressivo.Model.Campanhac.pas' {dmCampanha: TDataModule},
  Desconto.Entidades.Campanhac in 'src\Model\Entidades\Desconto.Entidades.Campanhac.pas',
  Desconto.Utilitarios in 'src\Util\Desconto.Utilitarios.pas',
  Desconto.Progressivo.Model.Filial in 'src\Model\Desconto.Progressivo.Model.Filial.pas' {dmFilial: TDataModule},
  Desconto.Progressivo.Model.Header in 'src\Model\Desconto.Progressivo.Model.Header.pas' {dmFlexHeader: TDataModule},
  Desconto.Progressivo.Model.Items in 'src\Model\Desconto.Progressivo.Model.Items.pas' {dmItems: TDataModule},
  Desconto.Progressivo.Model.GrupoAtivacao in 'src\Model\Desconto.Progressivo.Model.GrupoAtivacao.pas' {dmGrupoAtivacao: TDataModule},
  Desconto.Progressivo.View.Produtos in 'src\view\Desconto.Progressivo.View.Produtos.pas' {frmProdutos},
  Desconto.Progressivo.Model.Produtos in 'src\Model\Desconto.Progressivo.Model.Produtos.pas' {dmProdutos: TDataModule},
  Desconto.Progressivo.View.Incluir.Produtos in 'src\view\Desconto.Progressivo.View.Incluir.Produtos.pas' {frmIncluirProdutos},
  Desconto.Progressivo.Model.CampanhaItens in 'src\Model\Desconto.Progressivo.Model.CampanhaItens.pas' {dmCampanhaItens: TDataModule},
  Desconto.Progressivo.Model.CampanhaDesconto in 'src\Model\Desconto.Progressivo.Model.CampanhaDesconto.pas' {dmCampanhaDesconto: TDataModule},
  Desconto.Progressivo.View.AtivarCampanha in 'src\view\Desconto.Progressivo.View.AtivarCampanha.pas' {frmAtivarCampanha},
  Desconto.Progressivo.View.Alteracao in 'src\view\Desconto.Progressivo.View.Alteracao.pas' {frmAlteracaoPolitica},
  Desconto.Progressivo.View.AlteracaoFlexHeader in 'src\view\Desconto.Progressivo.View.AlteracaoFlexHeader.pas' {frmFlexHeader},
  Desconto.Progressivo.View.AlteracaoGrupoAtivacao in 'src\view\Desconto.Progressivo.View.AlteracaoGrupoAtivacao.pas' {frmAlterarGrupoAtivacao},
  Desconto.Progressivo.View.CampanhaProcter in 'src\view\Desconto.Progressivo.View.CampanhaProcter.pas' {frmProcter},
  Desconto.Progressivo.Model.ClienteProcter in 'src\Model\Desconto.Progressivo.Model.ClienteProcter.pas' {dmClientesProcter: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadastro, frmCadastro);
  Application.CreateForm(TdmCampanha, dmCampanha);
  Application.CreateForm(TdmFilial, dmFilial);
  Application.CreateForm(TdmFlexHeader, dmFlexHeader);
  Application.CreateForm(TdmItems, dmItems);
  Application.CreateForm(TdmGrupoAtivacao, dmGrupoAtivacao);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.CreateForm(TdmProdutos, dmProdutos);
  Application.CreateForm(TfrmIncluirProdutos, frmIncluirProdutos);
  Application.CreateForm(TdmCampanhaItens, dmCampanhaItens);
  Application.CreateForm(TdmCampanhaDesconto, dmCampanhaDesconto);
  Application.CreateForm(TfrmAtivarCampanha, frmAtivarCampanha);
  Application.CreateForm(TfrmAlteracaoPolitica, frmAlteracaoPolitica);
  Application.CreateForm(TfrmFlexHeader, frmFlexHeader);
  Application.CreateForm(TfrmAlterarGrupoAtivacao, frmAlterarGrupoAtivacao);
  Application.CreateForm(TfrmProcter, frmProcter);
  Application.CreateForm(TdmClientesProcter, dmClientesProcter);
  Application.Run;
end.
