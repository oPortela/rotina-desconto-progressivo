unit Desconto.Entidades.Campanhac;

interface
type
  TModelEntidadeCampanhac = class
    private
    Fdescricao: String;
    Fcodigo: Integer;
    FTipoCampanha: String;
    FTipoPatrocinio: String;
    FdtFim: TdateTime;
    FdtInicio: TDateTime;
    FUtilizaCodCliPrinc: String;
    FPercFornec: Integer;
    FNoaDebitCcRca: String;
    FComboContinuo: String;
    FUtilizaCodProdPrinc: String;
    FAlterarPtabela: String;
    FCreditaPolitica: String;
    FCodFilial: String;
    FCodGrupoCampanha: Integer;
    FPercCustFornec: Integer;
    FPartner_Id: Integer;
    FNumVerba: Integer;
    FCampanhaParcial: String;
    FIonSync: String;
    FUtilizaGrupoAtivacao: String;
    procedure Setcodigo(const Value: Integer);
    procedure Setdescricao(const Value: String);
    procedure SetdtFim(const Value: TdateTime);
    procedure SetdtInicio(const Value: TDateTime);
    procedure SetTipoCampanha(const Value: String);
    procedure SetTipoPatrocinio(const Value: String);
    procedure SetAlterarPtabela(const Value: String);
    procedure SetCodFilial(const Value: String);
    procedure SetComboContinuo(const Value: String);
    procedure SetCreditaPolitica(const Value: String);
    procedure SetNoaDebitCcRca(const Value: String);
    procedure SetPercFornec(const Value: Integer);
    procedure SetUtilizaCodCliPrinc(const Value: String);
    procedure SetUtilizaCodProdPrinc(const Value: String);
    procedure SetCampanhaParcial(const Value: String);
    procedure SetCodGrupoCampanha(const Value: Integer);
    procedure SetIonSync(const Value: String);
    procedure SetNumVerba(const Value: Integer);
    procedure SetPartner_Id(const Value: Integer);
    procedure SetPercCustFornec(const Value: Integer);
    procedure SetUtilizaGrupoAtivacao(const Value: String);
    public
      property codigo : Integer read Fcodigo write Setcodigo;
      property descricao : String read Fdescricao write Setdescricao;
      property dtInicio : TDateTime read FdtInicio write SetdtInicio;
      property dtFim : TdateTime read FdtFim write SetdtFim;
      property TipoPatrocinio : String read FTipoPatrocinio write SetTipoPatrocinio;
      property TipoCampanha : String read FTipoCampanha write SetTipoCampanha;
      property UtilizaCodProdPrinc : String read FUtilizaCodProdPrinc write SetUtilizaCodProdPrinc;
      property UtilizaCodCliPrinc : String read FUtilizaCodCliPrinc write SetUtilizaCodCliPrinc;
      property CodFilial : String read FCodFilial write SetCodFilial;
      property NoaDebitCcRca : String read FNoaDebitCcRca write SetNoaDebitCcRca;
      property CreditaPolitica : String read FCreditaPolitica write SetCreditaPolitica;
      property ComboContinuo : String read FComboContinuo write SetComboContinuo;
      property AlterarPtabela : String read FAlterarPtabela write SetAlterarPtabela;
      property PercFornec : Integer read FPercFornec write SetPercFornec;
      property CampanhaParcial : String read FCampanhaParcial write SetCampanhaParcial;
      property UtilizaGrupoAtivacao : String read FUtilizaGrupoAtivacao write SetUtilizaGrupoAtivacao;
      property NumVerba : Integer read FNumVerba write SetNumVerba;
      property PercCustFornec : Integer read FPercCustFornec write SetPercCustFornec;
      property CodGrupoCampanha : Integer read FCodGrupoCampanha write SetCodGrupoCampanha;
      property Partner_Id : Integer read FPartner_Id write SetPartner_Id;
      property IonSync : String read FIonSync write SetIonSync;
  end;

implementation

{ TModelEntidadeCampanhac }

{ TModelEntidadeCampanhac }

procedure TModelEntidadeCampanhac.SetAlterarPtabela(const Value: String);
begin
  FAlterarPtabela := Value;
end;

procedure TModelEntidadeCampanhac.SetCampanhaParcial(const Value: String);
begin
  FCampanhaParcial := Value;
end;

procedure TModelEntidadeCampanhac.SetCodFilial(const Value: String);
begin
  FCodFilial := Value;
end;

procedure TModelEntidadeCampanhac.SetCodGrupoCampanha(const Value: Integer);
begin
  FCodGrupoCampanha := Value;
end;

procedure TModelEntidadeCampanhac.Setcodigo(const Value: Integer);
begin
  Fcodigo := Value;
end;

procedure TModelEntidadeCampanhac.SetComboContinuo(const Value: String);
begin
  FComboContinuo := Value;
end;

procedure TModelEntidadeCampanhac.SetCreditaPolitica(const Value: String);
begin
  FCreditaPolitica := Value;
end;

procedure TModelEntidadeCampanhac.Setdescricao(const Value: String);
begin
  Fdescricao := Value;
end;

procedure TModelEntidadeCampanhac.SetdtFim(const Value: TdateTime);
begin
  FdtFim := Value;
end;

procedure TModelEntidadeCampanhac.SetdtInicio(const Value: TDateTime);
begin
  FdtInicio := Value;
end;

procedure TModelEntidadeCampanhac.SetIonSync(const Value: String);
begin
  FIonSync := Value;
end;

procedure TModelEntidadeCampanhac.SetNoaDebitCcRca(const Value: String);
begin
  FNoaDebitCcRca := Value;
end;

procedure TModelEntidadeCampanhac.SetNumVerba(const Value: Integer);
begin
  FNumVerba := Value;
end;

procedure TModelEntidadeCampanhac.SetPartner_Id(const Value: Integer);
begin
  FPartner_Id := Value;
end;

procedure TModelEntidadeCampanhac.SetPercCustFornec(const Value: Integer);
begin
  FPercCustFornec := Value;
end;

procedure TModelEntidadeCampanhac.SetPercFornec(const Value: Integer);
begin
  FPercFornec := Value;
end;

procedure TModelEntidadeCampanhac.SetTipoCampanha(const Value: String);
begin
  FTipoCampanha := Value;
end;

procedure TModelEntidadeCampanhac.SetTipoPatrocinio(const Value: String);
begin
  FTipoPatrocinio := Value;
end;

procedure TModelEntidadeCampanhac.SetUtilizaCodCliPrinc(const Value: String);
begin
  FUtilizaCodCliPrinc := Value;
end;

procedure TModelEntidadeCampanhac.SetUtilizaCodProdPrinc(const Value: String);
begin
  FUtilizaCodProdPrinc := Value;
end;

procedure TModelEntidadeCampanhac.SetUtilizaGrupoAtivacao(const Value: String);
begin
  FUtilizaGrupoAtivacao := Value;
end;

end.
