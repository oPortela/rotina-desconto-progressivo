object frmCadastro: TfrmCadastro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cadastro Desconto Progressivo'
  ClientHeight = 535
  ClientWidth = 910
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 17
  object Panel10: TPanel
    Left = 0
    Top = 0
    Width = 910
    Height = 535
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 884
    object pnlPrincipal: TCardPanel
      Left = 0
      Top = 0
      Width = 910
      Height = 535
      Align = alClient
      ActiveCard = cardConsulta
      BevelOuter = bvNone
      Caption = 'pnlPrincipal'
      TabOrder = 0
      ExplicitWidth = 884
      object cardConsulta: TCard
        Left = 0
        Top = 0
        Width = 910
        Height = 535
        Caption = 'cardConsulta'
        CardIndex = 0
        TabOrder = 0
        ExplicitWidth = 884
        object pnlPesquisar: TPanel
          Left = 0
          Top = 0
          Width = 910
          Height = 69
          Align = alTop
          Color = 737281
          ParentBackground = False
          TabOrder = 0
          ExplicitWidth = 884
          DesignSize = (
            910
            69)
          object Label1: TLabel
            Left = 136
            Top = 9
            Width = 57
            Height = 17
            Caption = 'Descri'#231#227'o'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label2: TLabel
            Left = 523
            Top = 9
            Width = 51
            Height = 17
            Caption = 'Data Fim'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label3: TLabel
            Left = 402
            Top = 9
            Width = 61
            Height = 17
            Caption = 'Data '#205'nicio'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label4: TLabel
            Left = 8
            Top = 9
            Width = 93
            Height = 17
            Caption = 'C'#243'd. Campanha'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Label22: TLabel
            Left = 658
            Top = 9
            Width = 77
            Height = 17
            Caption = 'Ordenar por:'
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object edtPesquisar: TEdit
            Left = 136
            Top = 32
            Width = 249
            Height = 25
            Color = clWhite
            TabOrder = 0
          end
          object btnPesquisar: TButton
            Left = 799
            Top = 4
            Width = 102
            Height = 60
            Anchors = [akTop, akRight, akBottom]
            Caption = 'Pesquisar'
            ImageAlignment = iaTop
            ImageIndex = 0
            ImageMargins.Top = 7
            Images = ImageList1
            TabOrder = 1
            OnClick = btnPesquisarClick
            ExplicitLeft = 773
          end
          object dataInicio: TDateTimePicker
            Left = 402
            Top = 32
            Width = 115
            Height = 25
            Date = 45490.000000000000000000
            Time = 0.550861423609603700
            ShowCheckbox = True
            Checked = False
            TabOrder = 2
          end
          object dataFIm: TDateTimePicker
            Left = 523
            Top = 32
            Width = 113
            Height = 25
            Date = 45468.000000000000000000
            Time = 0.550861423609603700
            ShowCheckbox = True
            Checked = False
            TabOrder = 3
          end
          object edtCodigo: TEdit
            Left = 8
            Top = 32
            Width = 105
            Height = 25
            Color = clWhite
            TabOrder = 4
          end
          object cbOrdenacao: TComboBox
            Left = 656
            Top = 32
            Width = 129
            Height = 25
            ItemIndex = 0
            TabOrder = 5
            Text = 'C'#243'd. Campanha'
            Items.Strings = (
              'C'#243'd. Campanha'
              'Descri'#231#227'o'
              'Data '#237'nicio'
              'Data fim')
          end
        end
        object pnlGrid: TPanel
          Left = 0
          Top = 69
          Width = 910
          Height = 394
          Align = alTop
          TabOrder = 1
          ExplicitWidth = 884
          object gridCampanha: TDBGrid
            Left = 1
            Top = 1
            Width = 908
            Height = 392
            Align = alClient
            Color = 6543694
            DataSource = dmCampanha.dsCampanha
            FixedColor = 6543694
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgTitleClick, dgTitleHotTrack]
            PopupMenu = PopupMenu1
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Segoe UI'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'CODIGO'
                Title.Caption = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Caption = 'Descri'#231#227'o'
                Width = 400
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTINICIO'
                Title.Caption = 'Data in'#237'cio'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTFIM'
                Title.Caption = 'Data fim'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODFILIAL'
                Title.Caption = 'C'#243'd. Filial'
                Width = 72
                Visible = True
              end>
          end
        end
        object pnlBotoes: TPanel
          Left = 0
          Top = 463
          Width = 910
          Height = 72
          Align = alClient
          BevelOuter = bvNone
          Color = 737281
          Padding.Left = 4
          Padding.Top = 4
          Padding.Right = 4
          Padding.Bottom = 4
          ParentBackground = False
          TabOrder = 2
          ExplicitWidth = 884
          object btnIncluir: TButton
            Left = 4
            Top = 4
            Width = 130
            Height = 64
            Align = alLeft
            Caption = 'Incluir'
            ImageAlignment = iaTop
            ImageIndex = 1
            ImageMargins.Top = 10
            Images = ImageList1
            TabOrder = 0
            OnClick = btnIncluirClick
          end
          object btnAlterar: TButton
            Left = 134
            Top = 4
            Width = 130
            Height = 64
            Align = alLeft
            Caption = 'Alterar'
            ImageAlignment = iaTop
            ImageIndex = 2
            ImageMargins.Top = 10
            Images = ImageList1
            TabOrder = 1
            OnClick = btnAlterarClick
          end
          object btnExcluir: TButton
            Left = 264
            Top = 4
            Width = 130
            Height = 64
            Align = alLeft
            Caption = 'Excluir'
            ImageAlignment = iaTop
            ImageIndex = 4
            ImageMargins.Top = 10
            Images = ImageList1
            TabOrder = 2
          end
          object btnFechar: TButton
            Left = 776
            Top = 4
            Width = 130
            Height = 64
            Align = alRight
            Caption = 'Fechar'
            ImageAlignment = iaTop
            ImageIndex = 3
            ImageMargins.Top = 10
            Images = ImageList1
            TabOrder = 3
            OnClick = btnFecharClick
            ExplicitLeft = 750
          end
        end
      end
      object cardCadastro: TCard
        Left = 0
        Top = 0
        Width = 910
        Height = 535
        Caption = 'cardCadastro'
        CardIndex = 1
        TabOrder = 1
        ExplicitWidth = 884
        object pagePrincipal: TPageControl
          Left = 0
          Top = 41
          Width = 910
          Height = 416
          ActivePage = pageFlexHeader
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 884
          object pageAtualizarCampanha: TTabSheet
            Caption = 'Atualizar Campanha'
            ImageIndex = 3
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 902
              Height = 90
              Align = alTop
              BevelOuter = bvNone
              Color = 737281
              ParentBackground = False
              TabOrder = 0
              ExplicitWidth = 876
              object Label9: TLabel
                Left = 9
                Top = 16
                Width = 43
                Height = 17
                Caption = 'C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label8: TLabel
                Left = 169
                Top = 16
                Width = 93
                Height = 17
                Caption = 'Rouleid Colgate'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object edtCodCampanhaItens: TEdit
                Left = 9
                Top = 41
                Width = 121
                Height = 25
                TabOrder = 0
                OnKeyPress = edtCodGrupoAtivacaoKeyPress
              end
              object btnAtualizarCampanhaItens: TButton
                Left = 760
                Top = 42
                Width = 107
                Height = 25
                Caption = 'Atualizar'
                ImageAlignment = iaRight
                ImageIndex = 3
                ImageMargins.Right = 10
                Images = ImageList2
                TabOrder = 1
                OnClick = btnAtualizarCampanhaItensClick
              end
              object btnPesquisarCampanhaItens: TButton
                Left = 635
                Top = 42
                Width = 105
                Height = 25
                Caption = 'Pesquisar'
                ImageAlignment = iaRight
                ImageIndex = 1
                ImageMargins.Right = 10
                Images = ImageList2
                TabOrder = 2
                OnClick = btnPesquisarCampanhaItensClick
              end
              object edtRouleid: TEdit
                Left = 169
                Top = 41
                Width = 121
                Height = 25
                TabOrder = 3
                OnKeyPress = edtCodGrupoAtivacaoKeyPress
              end
            end
            object gridCampanhaItens: TDBGrid
              Left = 0
              Top = 90
              Width = 902
              Height = 294
              Align = alClient
              DataSource = dmCampanhaItens.dsCampanhaItens
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODIGO'
                  Title.Caption = 'C'#243'digo'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SEQUENCIA'
                  Title.Caption = 'Sequ'#234'ncia'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODPROD'
                  Title.Caption = 'CodProd'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTMINIMA'
                  Title.Caption = 'Qtminima'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PERDESC'
                  Title.Caption = 'Perdesc'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TIPOPRODUTO'
                  Title.Caption = 'TipoProdutos'
                  Width = 85
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTMAXIMA'
                  Title.Caption = 'Qtmaxima'
                  Width = 83
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'TIPODESCONTO'
                  Title.Caption = 'TipoDesconto'
                  Width = 89
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODAUXILIAR'
                  Title.Caption = 'CodAuxiliar'
                  Width = 85
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'SYNCFV'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DTMXSALTER'
                  Width = 103
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PERDESC_ION'
                  Width = 97
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODGRUPOATIVACAO'
                  Title.Caption = 'CodGrupoAtiva'#231#227'o'
                  Width = 126
                  Visible = True
                end>
            end
          end
          object pageGrupoAtivacao: TTabSheet
            Caption = 'Grupo Ativa'#231#227'o'
            ImageIndex = 2
            OnShow = pageGrupoAtivacaoShow
            object Panel3: TPanel
              Left = 0
              Top = 0
              Width = 902
              Height = 90
              Align = alTop
              BevelOuter = bvNone
              Color = 737281
              ParentBackground = False
              TabOrder = 0
              ExplicitWidth = 876
              object Label5: TLabel
                Left = 513
                Top = 18
                Width = 125
                Height = 17
                Caption = 'Quantidade Produtos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label12: TLabel
                Left = 9
                Top = 16
                Width = 43
                Height = 17
                Caption = 'C'#243'digo'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label13: TLabel
                Left = 168
                Top = 16
                Width = 57
                Height = 17
                Caption = 'Descri'#231#227'o'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object edtCodGrupoAtivacao: TEdit
                Left = 9
                Top = 41
                Width = 121
                Height = 25
                TabOrder = 0
                OnKeyPress = edtCodGrupoAtivacaoKeyPress
              end
              object edtQtdMinima: TEdit
                Left = 513
                Top = 41
                Width = 137
                Height = 25
                TabOrder = 1
              end
              object edtDescricaoGrupo: TEdit
                Left = 168
                Top = 41
                Width = 298
                Height = 25
                Enabled = False
                ParentShowHint = False
                ShowHint = True
                TabOrder = 2
              end
              object incluirGrupoAtivacao: TButton
                Left = 784
                Top = 42
                Width = 83
                Height = 25
                Caption = 'Incluir'
                ImageAlignment = iaRight
                ImageIndex = 2
                ImageMargins.Right = 10
                Images = ImageList2
                TabOrder = 3
                OnClick = incluirGrupoAtivacaoClick
              end
            end
            object Panel6: TPanel
              Left = 0
              Top = 90
              Width = 902
              Height = 294
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitWidth = 876
              object gridGrupoAtivacao: TDBGrid
                Left = 0
                Top = 0
                Width = 902
                Height = 294
                Align = alClient
                DataSource = dmGrupoAtivacao.dsGrupoAtivacao
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CODGRUPOATIVACAO'
                    Title.Caption = 'Cod. Campanha'
                    Width = 123
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'Descri'#231#227'o'
                    Width = 315
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QTMINIMA'
                    Title.Caption = 'Quantidade'
                    Width = 109
                    Visible = True
                  end>
              end
            end
          end
          object pageFlexHeader: TTabSheet
            Caption = 'Flex Header'
            ImageIndex = 3
            OnShow = pageFlexHeaderShow
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 902
              Height = 177
              Align = alTop
              Color = 737281
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
              ExplicitWidth = 876
              object Label14: TLabel
                Left = 424
                Top = 19
                Width = 57
                Height = 17
                Caption = 'Descri'#231#227'o'
              end
              object Label15: TLabel
                Left = 224
                Top = 19
                Width = 70
                Height = 17
                Caption = '% Desconto'
              end
              object Label16: TLabel
                Left = 424
                Top = 113
                Width = 121
                Height = 17
                Caption = 'Qtd. Final Campanha'
              end
              object Label17: TLabel
                Left = 224
                Top = 113
                Width = 127
                Height = 17
                Caption = 'Qtd. Inicial Campanha'
              end
              object Label18: TLabel
                Left = 40
                Top = 113
                Width = 68
                Height = 17
                Caption = 'Quantidade'
              end
              object Label19: TLabel
                Left = 40
                Top = 19
                Width = 43
                Height = 17
                Caption = 'C'#243'digo'
              end
              object edtCodCampanhaflex: TEdit
                Left = 40
                Top = 42
                Width = 121
                Height = 25
                Enabled = False
                ParentShowHint = False
                ReadOnly = True
                ShowHint = False
                TabOrder = 0
              end
              object edtQuantidadeHeader: TEdit
                Left = 40
                Top = 136
                Width = 121
                Height = 25
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object edtQtdInicial: TEdit
                Left = 224
                Top = 136
                Width = 153
                Height = 25
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object edtQtdFinal: TEdit
                Left = 424
                Top = 136
                Width = 185
                Height = 25
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object edtPercdescHeader: TEdit
                Left = 224
                Top = 42
                Width = 153
                Height = 25
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object edtDescricaoHeader: TEdit
                Left = 424
                Top = 42
                Width = 185
                Height = 25
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
              end
              object btnIncluirHeader: TButton
                Left = 763
                Top = 136
                Width = 83
                Height = 25
                Caption = 'Incluir'
                ImageAlignment = iaRight
                ImageIndex = 2
                ImageMargins.Right = 10
                Images = ImageList2
                TabOrder = 6
                OnClick = btnIncluirHeaderClick
              end
            end
            object DBGrid2: TDBGrid
              Left = 0
              Top = 177
              Width = 902
              Height = 187
              Align = alTop
              DataSource = dmFlexHeader.dsHeader
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODCAMPANHAFLEX'
                  Title.Caption = 'C'#243'd. Campanha Flex'
                  Width = 132
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 146
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PERCDESC'
                  Title.Caption = 'Perc. Desconto'
                  Width = 102
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QUANTIDADE'
                  Title.Caption = 'Quantidade'
                  Width = 83
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QUANTIDADE_INI'
                  Title.Caption = 'Qtd. Inicial Familias'
                  Width = 121
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QUANTIDADE_FIM'
                  Title.Caption = 'Qtd. Final Fam'#237'lias'
                  Width = 123
                  Visible = True
                end>
            end
          end
          object pageRelacionamento: TTabSheet
            Caption = 'Relacionamento'
            ImageIndex = 2
            OnShow = pageRelacionamentoShow
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 902
              Height = 90
              Align = alTop
              Color = 737281
              ParentBackground = False
              TabOrder = 0
              ExplicitWidth = 876
              object Label6: TLabel
                Left = 16
                Top = 19
                Width = 93
                Height = 17
                Caption = 'C'#243'd. Campanha'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label7: TLabel
                Left = 240
                Top = 19
                Width = 119
                Height = 17
                Caption = 'C'#243'd. Campanha Flex'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object edtCodCampanhaRelacionamento: TEdit
                Left = 16
                Top = 42
                Width = 185
                Height = 25
                TabOrder = 0
              end
              object btnIncluirRelacionamento: TButton
                Left = 771
                Top = 50
                Width = 83
                Height = 25
                Caption = 'Incluir'
                ImageAlignment = iaRight
                ImageIndex = 2
                ImageMargins.Right = 10
                Images = ImageList2
                TabOrder = 1
                OnClick = btnIncluirRelacionamentoClick
              end
              object edtCodCampanhaFlexRelacionamento: TEdit
                Left = 240
                Top = 42
                Width = 153
                Height = 25
                TabOrder = 2
              end
            end
            object DBGrid4: TDBGrid
              Left = 0
              Top = 90
              Width = 902
              Height = 268
              Align = alTop
              DataSource = dmItems.dsItems
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODCAMPANHA'
                  Title.Caption = 'C'#243'd. Campanha'
                  Width = 122
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODCAMPANHAFLEX'
                  Title.Caption = 'C'#243'd Campanha Flex'
                  Width = 144
                  Visible = True
                end>
            end
            object Panel9: TPanel
              Left = 0
              Top = 358
              Width = 902
              Height = 26
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              ExplicitWidth = 876
            end
          end
          object pageAmarracao: TTabSheet
            Caption = 'Amarra'#231#227'o'
            ImageIndex = 4
            object DBGrid3: TDBGrid
              Left = 0
              Top = 90
              Width = 902
              Height = 268
              Align = alTop
              DataSource = dmCampanhaDesconto.dsCampanhaDesconto
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODDESCONTO'
                  Title.Caption = 'Cod Desconto'
                  Width = 97
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 124
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODCAMPANHAFLEX'
                  Title.Caption = 'Cod Campanha Flex'
                  Width = 126
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PERCDESC'
                  Title.Caption = '% Desconto'
                  Width = 85
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DTINICIO'
                  Title.Caption = 'Dt. Inicio'
                  Width = 79
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DTFIM'
                  Title.Caption = 'Dt. Fim'
                  Width = 71
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODFORNEC'
                  Title.Caption = 'Cod Fornecedor'
                  Width = 102
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTINI'
                  Title.Caption = 'Qtd. Inicio'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTFIM'
                  Title.Caption = 'Qtd. Fim'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRMINIMO'
                  Title.Caption = 'Vlr. M'#237'nimo'
                  Width = 87
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRMAXIMO'
                  Title.Caption = 'Vlr. M'#225'ximo'
                  Width = 85
                  Visible = True
                end>
            end
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 902
              Height = 90
              Align = alTop
              Color = 737281
              ParentBackground = False
              TabOrder = 1
              ExplicitWidth = 876
              object Label10: TLabel
                Left = 16
                Top = 19
                Width = 86
                Height = 17
                Caption = 'C'#243'd. Desconto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object Label11: TLabel
                Left = 200
                Top = 19
                Width = 119
                Height = 17
                Caption = 'C'#243'd. Campanha Flex'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object edtCodDesconto: TEdit
                Left = 16
                Top = 42
                Width = 121
                Height = 25
                TabOrder = 0
              end
              object btnAtulizarAmarracao: TButton
                Left = 752
                Top = 50
                Width = 102
                Height = 25
                Caption = 'Atualizar'
                ImageAlignment = iaRight
                ImageIndex = 3
                ImageMargins.Right = 10
                Images = ImageList2
                TabOrder = 1
                OnClick = btnAtulizarAmarracaoClick
              end
              object edtCodCampanhaFlex561: TEdit
                Left = 200
                Top = 42
                Width = 153
                Height = 25
                TabOrder = 2
              end
              object btnPEsquisarDesconto: TButton
                Left = 638
                Top = 50
                Width = 102
                Height = 25
                Caption = 'Pesquisar'
                ImageAlignment = iaRight
                ImageIndex = 1
                ImageMargins.Right = 10
                Images = ImageList2
                TabOrder = 3
                OnClick = btnPEsquisarDescontoClick
              end
            end
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 910
          Height = 41
          Align = alTop
          Caption = 'Cadastro Desconto Progressivo'
          Color = 737281
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          ExplicitWidth = 884
        end
        object Panel2: TPanel
          Left = 0
          Top = 457
          Width = 910
          Height = 78
          Align = alBottom
          BevelOuter = bvNone
          Color = 737281
          Padding.Left = 4
          Padding.Top = 4
          Padding.Right = 4
          Padding.Bottom = 4
          ParentBackground = False
          TabOrder = 2
          ExplicitWidth = 884
          object btnSalvar: TButton
            Left = 646
            Top = 4
            Width = 130
            Height = 70
            Align = alRight
            Caption = 'Salvar'
            ImageAlignment = iaTop
            ImageIndex = 5
            ImageMargins.Top = 10
            Images = ImageList1
            TabOrder = 0
            OnClick = btnSalvarClick
            ExplicitLeft = 620
          end
          object btnCancelar: TButton
            Left = 776
            Top = 4
            Width = 130
            Height = 70
            Align = alRight
            Caption = 'Cancelar'
            ImageAlignment = iaTop
            ImageIndex = 6
            ImageMargins.Top = 10
            Images = ImageList1
            TabOrder = 1
            OnClick = btnCancelarClick
            ExplicitLeft = 750
          end
        end
      end
      object cardAlteracao: TCard
        Left = 0
        Top = 0
        Width = 910
        Height = 535
        Caption = 'cardAlteracao'
        CardIndex = 2
        TabOrder = 2
        ExplicitWidth = 884
        object PageControl1: TPageControl
          Left = 0
          Top = 41
          Width = 910
          Height = 416
          ActivePage = TabSheet5
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 884
          object TabSheet2: TTabSheet
            Caption = 'Grupo Ativa'#231#227'o'
            ImageIndex = 2
            OnShow = pageGrupoAtivacaoShow
            object Panel12: TPanel
              Left = 0
              Top = 0
              Width = 902
              Height = 90
              Align = alTop
              BevelOuter = bvNone
              Color = 737281
              ParentBackground = False
              TabOrder = 0
              ExplicitWidth = 876
              object Label23: TLabel
                Left = 9
                Top = 16
                Width = 29
                Height = 17
                Caption = 'Filtro'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object edtPesquisarGrupoAtivacao: TEdit
                Left = 168
                Top = 41
                Width = 298
                Height = 25
                TabOrder = 0
              end
              object btnPesquisarGrupoAtivacao: TButton
                Left = 760
                Top = 42
                Width = 107
                Height = 25
                Caption = 'Pesquisar'
                ImageAlignment = iaRight
                ImageIndex = 1
                ImageMargins.Right = 10
                Images = ImageList2
                TabOrder = 1
                OnClick = btnPesquisarGrupoAtivacaoClick
              end
              object cbFiltroGrupoAtivacao: TComboBox
                Left = 9
                Top = 41
                Width = 145
                Height = 25
                TabOrder = 2
                Items.Strings = (
                  'C'#243'd. Campanha'
                  'Descri'#231#227'o')
              end
            end
            object Panel13: TPanel
              Left = 0
              Top = 90
              Width = 902
              Height = 294
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 1
              ExplicitWidth = 876
              object gridGrupoAtivacaoAlterar: TDBGrid
                Left = 0
                Top = 0
                Width = 902
                Height = 294
                Align = alClient
                DataSource = dmGrupoAtivacao.dsGrupoAtivacao
                PopupMenu = popGrupoAtivacao
                ReadOnly = True
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -13
                TitleFont.Name = 'Segoe UI'
                TitleFont.Style = []
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'CODGRUPOATIVACAO'
                    Title.Caption = 'Cod. Campanha'
                    Width = 123
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DESCRICAO'
                    Title.Caption = 'Descri'#231#227'o'
                    Width = 315
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'QTMINIMA'
                    Title.Caption = 'Quantidade'
                    Width = 109
                    Visible = True
                  end>
              end
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Flex Header'
            ImageIndex = 3
            OnShow = pageFlexHeaderShow
            object Panel14: TPanel
              Left = 0
              Top = 0
              Width = 902
              Height = 90
              Align = alTop
              Color = 737281
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
              ExplicitWidth = 876
              object Label27: TLabel
                Left = 32
                Top = 18
                Width = 29
                Height = 17
                Caption = 'Filtro'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object btnPesquisarFlexHeader: TButton
                Left = 753
                Top = 50
                Width = 100
                Height = 25
                Caption = 'Pesquisar'
                ImageAlignment = iaRight
                ImageIndex = 1
                ImageMargins.Right = 10
                Images = ImageList2
                TabOrder = 0
                OnClick = btnPesquisarFlexHeaderClick
              end
              object cbFlexHeader: TComboBox
                Left = 32
                Top = 41
                Width = 145
                Height = 25
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                Items.Strings = (
                  'C'#243'digo'
                  'Perdesc'
                  'Descri'#231#227'o')
              end
              object edtFlexHeader: TEdit
                Left = 208
                Top = 41
                Width = 297
                Height = 25
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
            end
            object DBGrid6: TDBGrid
              Left = 0
              Top = 90
              Width = 902
              Height = 294
              Align = alClient
              DataSource = dmFlexHeader.dsHeader
              PopupMenu = popFlexHeader
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODCAMPANHAFLEX'
                  Title.Caption = 'C'#243'd. Campanha Flex'
                  Width = 132
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 146
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PERCDESC'
                  Title.Caption = 'Perc. Desconto'
                  Width = 102
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QUANTIDADE'
                  Title.Caption = 'Quantidade'
                  Width = 83
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QUANTIDADE_INI'
                  Title.Caption = 'Qtd. Inicial Familias'
                  Width = 121
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QUANTIDADE_FIM'
                  Title.Caption = 'Qtd. Final Fam'#237'lias'
                  Width = 123
                  Visible = True
                end>
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Relacionamento'
            ImageIndex = 2
            OnShow = pageRelacionamentoShow
            object Panel15: TPanel
              Left = 0
              Top = 0
              Width = 902
              Height = 90
              Align = alTop
              Color = 737281
              ParentBackground = False
              TabOrder = 0
              ExplicitWidth = 876
              object Label21: TLabel
                Left = 24
                Top = 18
                Width = 29
                Height = 17
                Caption = 'Filtro'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object btnPesquisarRelacionamento: TButton
                Left = 746
                Top = 50
                Width = 108
                Height = 25
                Caption = 'Pesquisar'
                ImageAlignment = iaRight
                ImageIndex = 1
                ImageMargins.Right = 10
                Images = ImageList2
                TabOrder = 0
                OnClick = btnPesquisarRelacionamentoClick
              end
              object cbFiltroRelacionamento: TComboBox
                Left = 24
                Top = 41
                Width = 145
                Height = 25
                TabOrder = 1
                Items.Strings = (
                  'C'#243'd Campanha'
                  'C'#243'd Campanha Flex')
              end
              object edtRelacionamento: TEdit
                Left = 200
                Top = 41
                Width = 297
                Height = 25
                TabOrder = 2
              end
            end
            object DBGrid7: TDBGrid
              Left = 0
              Top = 90
              Width = 902
              Height = 294
              Align = alTop
              DataSource = dmItems.dsItems
              ReadOnly = True
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODCAMPANHA'
                  Title.Caption = 'C'#243'd. Campanha'
                  Width = 122
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODCAMPANHAFLEX'
                  Title.Caption = 'C'#243'd Campanha Flex'
                  Width = 144
                  Visible = True
                end>
            end
            object Panel16: TPanel
              Left = 0
              Top = 384
              Width = 902
              Height = 0
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              ExplicitWidth = 876
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Amarra'#231#227'o'
            ImageIndex = 4
            object gridPolitica: TDBGrid
              Left = 0
              Top = 90
              Width = 902
              Height = 294
              Align = alClient
              DataSource = dmCampanhaDesconto.dsCampanhaDesconto
              PopupMenu = popPolitica
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -13
              TitleFont.Name = 'Segoe UI'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'CODDESCONTO'
                  Title.Caption = 'C'#243'd Desconto'
                  Width = 97
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DESCRICAO'
                  Title.Caption = 'Descri'#231#227'o'
                  Width = 124
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODCAMPANHAFLEX'
                  Title.Caption = 'Cod Campanha Flex'
                  Width = 126
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'PERCDESC'
                  Title.Caption = '% Desconto'
                  Width = 85
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DTINICIO'
                  Title.Caption = 'Dt. Inicio'
                  Width = 79
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DTFIM'
                  Title.Caption = 'Dt. Fim'
                  Width = 71
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'CODFORNEC'
                  Title.Caption = 'Cod Fornecedor'
                  Width = 102
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTINI'
                  Title.Caption = 'Qtd. Inicio'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'QTFIM'
                  Title.Caption = 'Qtd. Fim'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRMINIMO'
                  Title.Caption = 'Vlr. M'#237'nimo'
                  Width = 87
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'VLRMAXIMO'
                  Title.Caption = 'Vlr. M'#225'ximo'
                  Width = 85
                  Visible = True
                end>
            end
            object Panel17: TPanel
              Left = 0
              Top = 0
              Width = 902
              Height = 90
              Align = alTop
              Color = 737281
              ParentBackground = False
              TabOrder = 1
              ExplicitWidth = 876
              object Label20: TLabel
                Left = 24
                Top = 17
                Width = 29
                Height = 17
                Caption = 'Filtro'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentFont = False
              end
              object btnPesquisarDescontoAlt: TButton
                Left = 758
                Top = 50
                Width = 102
                Height = 25
                Caption = 'Pesquisar'
                ImageAlignment = iaRight
                ImageIndex = 1
                ImageMargins.Right = 10
                Images = ImageList2
                TabOrder = 0
                OnClick = btnPesquisarDescontoAltClick
              end
              object cbFiltro: TComboBox
                Left = 24
                Top = 40
                Width = 145
                Height = 25
                ItemIndex = 0
                TabOrder = 1
                Text = 'CODIGO'
                Items.Strings = (
                  'CODIGO'
                  'DESCRICAO')
              end
              object edtFiltroDesconto: TEdit
                Left = 200
                Top = 40
                Width = 297
                Height = 25
                TabOrder = 2
              end
            end
          end
        end
        object Panel18: TPanel
          Left = 0
          Top = 0
          Width = 910
          Height = 41
          Align = alTop
          Caption = 'Cadastro Desconto Progressivo'
          Color = 737281
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          ExplicitWidth = 884
        end
        object Panel19: TPanel
          Left = 0
          Top = 457
          Width = 910
          Height = 78
          Align = alBottom
          BevelOuter = bvNone
          Color = 737281
          Padding.Left = 4
          Padding.Top = 4
          Padding.Right = 4
          Padding.Bottom = 4
          ParentBackground = False
          TabOrder = 2
          ExplicitWidth = 884
          object Button8: TButton
            Left = 646
            Top = 4
            Width = 130
            Height = 70
            Align = alRight
            Caption = 'Salvar'
            ImageAlignment = iaTop
            ImageIndex = 5
            ImageMargins.Top = 10
            Images = ImageList1
            TabOrder = 0
            OnClick = btnSalvarClick
            ExplicitLeft = 620
          end
          object Button9: TButton
            Left = 776
            Top = 4
            Width = 130
            Height = 70
            Align = alRight
            Caption = 'Cancelar'
            ImageAlignment = iaTop
            ImageIndex = 6
            ImageMargins.Top = 10
            Images = ImageList1
            TabOrder = 1
            OnClick = btnCancelarClick
            ExplicitLeft = 750
          end
        end
      end
    end
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Height = 32
    Width = 32
    Left = 720
    Top = 392
    Bitmap = {
      494C010107001800040020002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF7C5D35FF7C5D35FF7C5D35FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005359
      FFFF5359FFFF5359FFFF5359FFFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF7C5D35FF7C5D35FF0000000000000000000000000000
      000000000000000000000000000000000000000000004545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF3333B6DA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005359FFFF5359FFFF5359
      FFFF5359FFFF5359FFFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF0000000000000000000000000000
      00000000000000000000000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF7C5D35FF7C5D35FF0000000000000000000000000000
      00000000000000000000000000004545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C24605359FFFF5359FFFF5359FFFF5359
      FFFF5359FFFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF00000000000000000000
      00000000000000000000000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2
      D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2
      D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FF936F
      3FFF936F3FFF936F3FFF7C5D35FF7C5D35FF0000000000000000000000000000
      000000000000000000004545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359
      FFFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF0000
      00000000000000000000000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2
      D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFA4C277FFF1E2D8FFF1E2D8FFF1E2
      D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFDCC8
      B6FF936F3FFF936F3FFF7C5D35FF7C5D35FF0000000000000000000000000000
      0000000000004545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF3B39
      DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF0000000000000000000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2
      D8FFF1E2D8FFA4C277FFA4C277FFA4C277FF9FE5B3FFA4C277FFA4C277FFAAC5
      7EFFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFDCC8
      B6FF936F3FFF936F3FFF7C5D35FF7C5D35FF0000000000000000000000000000
      00004545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001E215E9B5359FFFF5359FFFF5359FFFF5359FFFF5359FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFEEEEFCFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF0000000000000000000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2
      D8FFA4C277FFA4C277FF9FE5B3FF9FE5B3FF9FE5B3FF9FE5B3FF9FE5B3FFA4C2
      77FFADC683FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFDCC8
      B6FF936F3FFF936F3FFF7C5D35FF7C5D35FF0000000000000000000000004545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF00000000000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2
      D8FFA4C277FF9FE5B3FF9FE5B3FF9FE5B3FF9FE5B3FF9FE5B3FF9FE5B3FF9FE5
      B3FFA4C277FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFDCC8
      B6FF936F3FFF936F3FFF7C5D35FF7C5D35FF0000000000000000000000004545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF8A8AEFFFE2E2E2FFE2E2E2FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FFE2E2E2FFE2E2E2FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFDED9
      C0FFA2D090FF9FE5B3FF9FE5B3FFA4C277FFA4C278FF9FE5B3FF9FE5B3FF9FE5
      B3FFA4C277FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFDCC8
      B6FF936F3FFF936F3FFF7C5D35FF7C5D35FF00000000000000004545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF3232B4D9000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFA4C2
      77FF9FE5B3FF9FE5B3FFA4C277FF9FE5B3FFA4C277FFA4C277FF9FE5B3FF9FE5
      B3FF9FE5B3FFAEC686FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFDCC8
      B6FF936F3FFF936F3FFF7C5D35FF7C5D35FF00000000000000004545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFFFFFFFFFFFFFF
      FFFFFFFFFFFF3B39DBFFFFFFFFFFFFFFFFFF3B39DBFFFFFFFFFFFFFFFFFF3B39
      DBFFFFFFFFFFFFFFFFFFFFFFFFFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF3B39DBFF0000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFDAD9
      BBFFA2D394FF9FE5B3FF9FE5B3FF9FE5B3FF9FE5B3FFA4C277FFA4C277FF9FE5
      B3FFA4C277FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFDCC8
      B6FF936F3FFF936F3FFF7C5D35FF7C5D35FF00000000000000004545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFFFFFFFFFFFFFF
      FFFFFFFFFFFF3B39DBFFFFFFFFFFFFFFFFFF3B39DBFFFFFFFFFFFFFFFFFF3B39
      DBFFFFFFFFFFFFFFFFFFFFFFFFFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF3B39DBFF0000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2
      D8FFA4C277FF9FE5B3FF9FE5B3FF9FE5B3FF9FE5B3FF9FE5B3FFA1D69AFF9FE5
      B3FFA4C277FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFDCC8
      B6FF936F3FFF936F3FFF7C5D35FF7C5D35FF00000000000000004545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FF4545F9FF4545F9FF4545F9FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFFFFFFFFFFFFFF
      FFFFFFFFFFFF3B39DBFFFFFFFFFFFFFFFFFF3B39DBFFFFFFFFFFFFFFFFFF3B39
      DBFFFFFFFFFFFFFFFFFFFFFFFFFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF3B39DBFF0000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2
      D8FFA4C277FFA4C277FF9FE5B3FF9FE5B3FF9FE5B3FF9FE5B3FF9FE5B3FFA4C2
      77FFA7C37AFFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFDCC8
      B6FF936F3FFF936F3FFF7C5D35FF7C5D35FF00000000000000004545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FF4545F9FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFFFFFFFFFFFFFF
      FFFFFFFFFFFF3B39DBFFFFFFFFFFFFFFFFFF3B39DBFFFFFFFFFFFFFFFFFF3B39
      DBFFFFFFFFFFFFFFFFFFFFFFFFFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF3B39DBFF0000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2
      D8FFF1E2D8FFA4C277FFA4C277FFA4C882FF9FE5B3FFA4C278FFA4C277FFA5C2
      78FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFDCC8
      B6FF936F3FFF936F3FFF7C5D35FF7C5D35FF00000000000000004545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F102F6E5359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFFFFFFFFFFFFFF
      FFFFFFFFFFFF3B39DBFFFFFFFFFFFFFFFFFF3B39DBFFFFFFFFFFFFFFFFFF3B39
      DBFFFFFFFFFFFFFFFFFFFFFFFFFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF3B39DBFF0000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2
      D8FFF1E2D8FFF1E2D8FFF1E2D8FFF0E1D6FFA4C277FFF1E2D8FFF1E2D8FFF1E2
      D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFDCC8
      B6FF936F3FFF936F3FFF7C5D35FF7C5D35FF00000000000000004545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005359FDFE5359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFFFFFFFFFFFFFF
      FFFFFFFFFFFF3B39DBFFFFFFFFFFFFFFFFFF3B39DBFFFFFFFFFFFFFFFFFF3B39
      DBFFFFFFFFFFFFFFFFFFFFFFFFFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF3B39DBFF0000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2
      D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2
      D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FFF1E2D8FF936F
      3FFF936F3FFF936F3FFF7C5D35FF7C5D35FF00000000000000004545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000151640805359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFFFFFFFFFFFFFF
      FFFFFFFFFFFF3B39DBFFFFFFFFFFFFFFFFFF3B39DBFFFFFFFFFFFFFFFFFF3B39
      DBFFFFFFFFFFFFFFFFFFFFFFFFFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF3B39DBFF0000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF7C5D35FF7C5D35FF00000000000000004545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF5359FFFF0000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF7C5D35FF7C5D35FF00000000000000004545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF5359FFFF5359FFFF0000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF7C5D35FF7C5D35FF00000000000000004545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FF4545F9FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39DBFF3B39
      DBFF5359FFFF5359FFFF5359FFFF0000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF7C5D35FF7C5D35FF00000000000000004545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FF4545F9FF4545F9FF4545F9FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B39DBFF3B39DBFF3B39DBFF5359
      FFFF5359FFFF5359FFFF5359FFFF0000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFFFAD7BDFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFA38154FF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF7C5D35FF7C5D35FF00000000000000004545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFFADAEF6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B39DBFF3B39DBFF5359FFFF5359
      FFFF5359FFFF5359FFFF000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF7C5D35FF7C5D35FF00000000000000004545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF9799F6FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B39DBFF5359FFFF5359FFFF5359
      FFFF5359FFFF5359FFFF000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBB4
      80FFFBB480FFFBB480FFFBCDABFFFBD8BEFFFBD8BEFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF7C5D35FF7C5D35FF00000000000000004545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359
      FFFF5359FFFF676CFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3B39
      DBFF494CF0FF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359
      FFFF5359FFFF00000000000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBB4
      80FFFBB480FFFBB480FFFBC69FFFFBD8BEFFFBD8BEFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF7C5D35FF7C5D35FF0000000000000000000000004545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FFE2E2E2FFE2E2E2FFE2E2E2FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FFE2E2E2FFE2E2E2FF8C8CEFFF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359
      FFFF5359FFFF5359FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF494B
      F0FF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359
      FFFF0C0C246000000000000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBB4
      80FFFBB480FFFBB480FFFBC69FFFFBD8BEFFFBD8BEFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF7C5D35FF7C5D35FF0000000000000000000000004545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359
      FFFF0000000000000000000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBB4
      80FFFBB480FFFBB480FFFBC69FFFFBD8BEFFFBD8BEFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF7C5D35FF7C5D35FF0000000000000000000000000000
      00004545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF0000
      00000000000000000000000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBB4
      80FFFBB480FFFBB480FFFBC69FFFFBD8BEFFFBD8BEFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF7C5D35FF7C5D35FF0000000000000000000000000000
      0000000000004545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000005359FFFF5359FFFF5359FFFF5359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF212467A2000000000000
      00000000000000000000000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBB4
      80FFFBB480FFFBB480FFFBC69FFFFBD8BEFFFBD8BEFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF7C5D35FF000000000000000000000000000000000000
      000000000000000000004545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005359FFFF5359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF0000000000000000000000000000
      00000000000000000000000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBB4
      80FFFBB480FFFBB480FFFBC69FFFFBD8BEFFFBD8BEFF936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF00000000000000000000000000000000000000000000
      00000000000000000000000000004545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005359
      FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359FFFF5359
      FFFF5359FFFF5359FFFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFF936F3FFF936F3FFF936F
      3FFF936F3FFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545F9FF4545
      F9FF4545F9FF4545F9FF4545F9FF4545F9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000014153E7E5359FFFF0F102F6E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000936F3FFF936F3FFF936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFF936F3FFF936F3FFF936F
      3FFF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000936F
      3FFF936F3FFF936F3FFF936F3FFF936F3FFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8
      BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFFFBD8BEFF936F3FFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F1E22FF1F1E
      22FF1F1E22FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F1E22FFA8A6A3FFA8A6
      A3FFA8A6A3FF1F1E22FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000060847008719CD00E51EFF
      00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF
      00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF18CB
      00E4084600860000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F1E22FFA8A6A3FFA8A6
      A3FFA8A6A3FFA8A6A3FF1F1E22FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000084700871EFF00FF1EFF00FF1EFF
      00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF
      00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF
      00FF1EFF00FF0846008600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000005A40
      FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40
      FAFF5A40FAFF5A40FAFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F1E22FFCAC5C2FFA8A6
      A3FFA8A6A3FFA8A6A3FFA8A6A3FF1F1E22FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000019CD00E51EFF00FF010E003C0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000010E
      003D1EFF00FF18CB00E400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A40FAFF5A40FAFF5A40
      FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40
      FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F1E22FFD0CA
      C7FFD0CAC7FFA8A6A3FFA8A6A3FFA8A6A3FF1F1E22FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001EFF00FF1EFF00FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001EFF00FF1EFF00FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00000000000000000000000000000000000000000000000000FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000523BE4F45A40FAFF5A40FAFF5A40FAFF5A40
      FAFF5A40FAFF5A40FAFFFBF1EDFFFFF5EDFFFFF5EDFFFFF5EDFFE0D3EFFF5A40
      FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF0A071C57000000000000
      0000000000000000000000000000000000000000000000000000000000001F1E
      22FFD0CAC7FFD0CAC7FFD0CAC7FFA8A6A3FFA8A6A3FF1F1E22FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000060847
      008719CD00E51EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF
      00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF
      00FF1EFF00FF18CB00E408460086000000060000000000000000000000000000
      00001EFF00FF1EFF00FF0000000000000000000000FFF3DA6CFFF3DA6CFFF3DA
      6CFFF3DA6CFFF3DA6CFFF3DA6CFFF3DA6CFFF3DA6CFFF3DA6CFF4A3D19FF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000005A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFFFFF5
      EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFFFFF5EDFFD9CBF0FF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      00001F1E22FFD0CAC7FFD0CAC7FFD0CAC7FFA8A6A3FFA8A6A3FF1F1E22FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000084700871EFF
      00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF
      00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF
      00FF1EFF00FF1EFF00FF1EFF00FF084600860000000000000000000000000000
      00001EFF00FF1EFF00FF0000000000000000000000FFF1FEA4FFF1FEA4FFF1FE
      A4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FF4A3D19FF0000
      0000000000000000000000000000000000FF000000FF7DFCD7FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5
      EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF0A07
      1C56000000000000000000000000000000000000000000000000000000000000
      0000000000001F1E22FFD0CAC7FFD0CAC7FFD0CAC7FFA8A6A3FFA8A6A3FF1F1E
      22FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000019CD00E51EFF
      00FF010E003C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010E003D1EFF00FF18CB00E40000000000000000000000000000
      00001EFF00FF1EFF00FF0000000000000000000000FFF1FEA4FFF1FEA4FFF1FE
      A4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FF4A3D19FF0000
      00000000000000000000000000FF000000FF7DFCD7FF000000FF000000FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005A40FAFF5A40FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5
      EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40FAFF5A40FAFF5A40FAFF5A40
      FAFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000001F1E22FFD0CAC7FFD0CAC7FFD0CAC7FF1F1E22FF1F1E
      22FF00000000000000000000000000000000000000001F1E22FF1F1E22FF1F1E
      22FF1F1E22FF1F1E22FF1F1E22FF1F1E22FF0000000000000000000000000000
      00000000000000000000000000000000000000000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      00001EFF00FF1EFF00FF0000000000000000000000FFF1FEA4FFF1FEA4FFF1FE
      A4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FF4A3D19FF0000
      000000000000000000FF000000FF7DFCD7FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000000000000000000000000000000000000000000000000000000000
      00005A40FAFF5A40FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40FAFF5A40FAFF5A40
      FAFF5A40FAFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000001F1E22FFD0CAC7FF1F1E22FF1DA0F4FF1F1E
      22FF1F1E22FF00000000000000001F1E22FF1F1E22FF1CC4FAFF1CC4FAFF1CC4
      FAFF1CC4FAFF1CC4FAFF1CC4FAFF1CC4FAFF1F1E22FF1F1E22FF000000000000
      00000000000000000000000000000000000000000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      00001EFF00FF1EFF00FF0000000000000000000000FFF1FEA4FFF1FEA4FFFFFF
      FFFFF1FEA4FFFFFFFFFFF1FEA4FFFFFFFFFFF1FEA4FFF1FEA4FF4A3D19FF0000
      0000000000FF000000FF7DFCD7FF7DFCD7FF73E56EFF73E56EFF73E56EFF73E5
      6EFF73E56EFF73E56EFF73E56EFF73E56EFF73E56EFF73E56EFF73E56EFF5FBD
      47FF000000000000000000000000000000000000000000000000000000000000
      00005A40FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40FAFF5A40
      FAFF5A40FAFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001F1E22FF1F1E22FF1F232BFF1DA0
      F4FF1F1E22FF1F1E22FF1F1E22FF1CC4FAFF1CC4FAFF1CC4FAFF1CC4FAFF1CC4
      FAFF1CC4FAFF1CC4FAFF1CC4FAFF1CC4FAFF1CC4FAFF1CC4FAFF1F1E22FF1F1E
      22FF0000000000000000000000000000000000000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      00001EFF00FF1EFF00FF0000000000000000000000FFF1FEA4FFF1FEA4FFF1FE
      A4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FF4A3D19FF0000
      000000000000000000FF000000FF7DFCD7FF000000FF000000FF000000FF0000
      00FF000000FF51A38BE2142722F9000000FF000000FF000000FF7DFCD7FF5FBD
      47FF000000000000000000000000000000000000000000000000000000005A40
      FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40
      FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40
      FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFD8CAF0FF5A40
      FAFF5A40FAFF5A40FAFF00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F1E22FF1F23
      2BFF1F1E22FF1CBDF1FF1CC4FAFF1CC4FAFF1CC4FAFF1F1E22FF1F1E22FF1F1E
      22FF1F1E22FF1F1E22FF1F1E22FF1F1E22FF1CC4FAFF1CC4FAFF1CC4FAFF1F1E
      22FF1F1E22FF00000000000000000000000000000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      00001EFF00FF1EFF00FF0000000000000000000000FFF1FEA4FFF1FEA4FFF1FE
      A4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FF4A3D19FF0000
      00000000000000000000000000FF000000FF7DFCD7FF000000FF000000FF0000
      00000000000000000000000000000000000000000000000000387DFCD7FF5FBD
      47FF000000000000000000000000000000000000000000000000000000005A40
      FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40FAFF5A40
      FAFF5A40FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFF5A40FAFF5A40
      FAFF5A40FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40
      FAFF5A40FAFF5A40FAFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001F1E
      22FF1CC2F8FF1CC4FAFF1CC4FAFF1F1E22FF1F1E22FFE6E1DFFFE6E1DFFFE6E1
      DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFF1F1E22FF1F1E22FF1CC4FAFF1CC4
      FAFF1F1E22FF1F1E22FF000000000000000000000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      00001EFF00FF1EFF00FF0000000000000000000000FFF1FEA4FFF1FEA4FFF1FE
      A4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FF4A3D19FF0000
      0000000000000000000000000000000000FF000000FF7DFCD7FF000000FF0000
      00FF0000000000000000000000000000000000000000000000387DFCD7FF5FBD
      47FF000000000000000000000000000000000000000000000000000000005A40
      FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40
      FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFFFFF5EDFF5A40FAFF5A40FAFF5A40
      FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40
      FAFF5A40FAFF5A40FAFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001F1E
      22FF1CC4FAFF1CC4FAFF1F1E22FF737172FFE6E1DFFFE6E1DFFFE6E1DFFFE6E1
      DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFF1F1E22FF1F1E22FF1CC4
      FAFF1CC4FAFF1F1E22FF000000000000000000000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      0000118F00BF118F00BF00000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      00001EFF00FF1EFF00FF0000000000000000000000FFF1FEA4FFF1FEA4FFF1FE
      A4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FF4A3D19FF0000
      000000000000000000000000000000000000000000FF000000FF000000FF0000
      00000000000000000000000000000000000000000000000000387DFCD7FF5FBD
      47FF0000000000000000000000000000000000000000000000005A40FAFF5A40
      FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40
      FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFDFD2
      EFFF5A40FAFF5A40FAFF5A40FAFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F1E22FF1CC4
      FAFF1CC4FAFF1F1E22FF928E8FFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1
      DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFF1F1E22FF1F1E
      22FF1CC4FAFF1CC4FAFF1F1E22FF0000000000000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      00001EFF00FF1EFF00FF00000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      00001EFF00FF1EFF00FF0000000000000000000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00000000000000000000000000000000000000000000000000FF000000000000
      0000000000000000000000000000000000000000000000000038000000FF0000
      00FF0000000000000000000000000000000000000000000000005A40FAFF5A40
      FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFFFFF5EDFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40
      FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFF5A40FAFF5A40FAFF5A40FAFF000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F1E22FF1CC4
      FAFF1CC4FAFF1F1E22FFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1
      DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFF1F1E
      22FF1CC4FAFF1CC4FAFF1F1E22FF0000000000000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      00001EFF00FF1EFF00FF00000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      00001EFF00FF1EFF00FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005A40FAFF5A40
      FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFFFFF5EDFFFFF5EDFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFFFFF5
      EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFF5A40FAFF5A40FAFF5A40FAFF000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F1E22FF1CC4FAFF1CC4
      FAFF1F1E22FFE6E1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1
      DFFF1F1E22FF1CC4FAFF1CC4FAFF1F1E22FF00000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      00001EFF00FF1EFF00FF00000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      00001EFF00FF1EFF00FF00000000000000000000000000000000000000000000
      0000000000DF000000FF000000FF000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      00000000000000000058000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF00000000000000005A40FAFF5A40
      FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFFFFF5EDFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40
      FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFF5A40FAFF5A40FAFF5A40FAFF000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F1E22FF1CC4FAFF1CC4
      FAFF1F1E22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1
      DFFF1F1E22FF1CC4FAFF1CC4FAFF1F1E22FF00000000000000001EFF00FF1EFF
      00FF00000000000000000000000000000000119200C11EFF00FF1EFF00FF1EFF
      00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF118F00BF000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      00001EFF00FF1EFF00FF00000000000000000000000000000000000000000000
      0000000000DF7DFCD7FF14290FFF000000000000000000000000000000000000
      00000000000000000000000000FF000000FF000000FF00000000000000000000
      00000000000000000058F3C953FFF3C953FFF3C953FFF3C953FFF3C953FFF3C9
      53FFF3C953FFF3C953FFF3C953FFEBC350FF00000000000000005A40FAFF5A40
      FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40
      FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFBF1
      EDFF5A40FAFF5A40FAFF5A40FAFF000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F1E22FF1CC4FAFF1CC4
      FAFF1F1E22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1
      DFFF1F1E22FF1CC4FAFF1CC4FAFF1F1E22FF00000000000000001EFF00FF1EFF
      00FF00000000000000000000000000000000119200C11EFF00FF1EFF00FF1EFF
      00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF118F00BF000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      00001EFF00FF1EFF00FF00000000000000000000000000000000000000000000
      0000000000DF7DFCD7FF14290FFF000000000000000000000000000000000000
      000000000000000000FF000000FF71E054FF000000FF000000FF000000000000
      00000000000000000058F1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FE
      A4FFF1FEA4FFF1FEA4FFF1FEA4FFEBC350FF0000000000000000000000095A40
      FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40
      FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFFFFF5EDFF5A40FAFF5A40FAFF5A40
      FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40
      FAFF5A40FAFF5A40FAFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F1E22FF1CC4FAFF1CC4
      FAFF1F1E22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E22FFE6E1DFFFE6E1
      DFFF1F1E22FF1CC4FAFF1CC4FAFF1F1E22FF00000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      00001EFF00FF1EFF00FF00000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      00001EFF00FF1EFF00FF00000000000000000000000000000000000000000000
      0000000000DF7DFCD7FF14290FFF000000000000000000000000000000000000
      00000000000000000000000000FF000000FF71E054FF000000FF000000FF0000
      00000000000000000058F1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FE
      A4FFF1FEA4FFF1FEA4FFF1FEA4FFEBC350FF0000000000000000000000005A40
      FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40FAFF5A40
      FAFF5A40FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFF5A40FAFF5A40
      FAFF5A40FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40
      FAFF5A40FAFF5A40FAFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F1E22FF1CC4FAFF1CC4
      FAFF1F1E22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E22FFE6E1DFFFE6E1
      DFFF1F1E22FF1CC4FAFF1CC4FAFF1F1E22FF00000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      00001EFF00FF1EFF00FF00000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      00001EFF00FF1EFF00FF00000000000000000000000000000000000000000000
      0000000000DF7DFCD7FF14290FFF000000FF000000FF000000FF000000000000
      00FF000000FF000000FF000000FF000000FF000000FF71E054FF000000FF0000
      00FF0000000000000058F1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FE
      A4FFF1FEA4FFF1FEA4FFF1FEA4FFEBC350FF0000000000000000000000005A40
      FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFE7DAEFFF5A40
      FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40
      FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40
      FAFF5A40FAFF5A40FAFF00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F1E22FF1CC4FAFF1CC4
      FAFF1F1E22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E22FFE6E1DFFFE6E1
      DFFF1F1E22FF1CC4FAFF1CC4FAFF1F1E22FF00000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      00001EFF00FF1EFF00FF00000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      00001EFF00FF1EFF00FF00000000000000000000000000000000000000000000
      0000000000DF7DFCD7FF71E054FF71E054FF71E054FF71E054FF71E054FF71E0
      54FF71E054FF71E054FF71E054FF71E054FF71E054FF7DFCD7FF71E054FF0000
      00FF000000FF00000058F1FEA4FFF1FEA4FFFCFFE9FFF5FEBEFFFBFFE3FFF6FE
      C3FFFAFFDDFFF7FEC9FFF1FEA4FFEBC350FF0000000000000000000000000000
      01125A40FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFE7DA
      EFFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40FAFF5A40
      FAFF5A40FAFF0000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F1E22FF1CC4FAFF1CC4
      FAFF1F1E22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E22FFFFFFFFFFE6E1DFFFE6E1
      DFFF1F1E22FF1CC4FAFF1CC4FAFF1F1E22FF00000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      0000119200C1119200C100000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      00001EFF00FF1EFF00FF00000000000000000000000000000000000000000000
      0000000000DF000000FF000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF000000FF7DFCD7FF000000FF0000
      00FF0000000000000058F1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FE
      A4FFF1FEA4FFF1FEA4FFF1FEA4FFEBC350FF0000000000000000000000000000
      00005A40FAFF5A40FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40FAFF5A40FAFF5A40
      FAFF5A40FAFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F1E22FF1CC4
      FAFF1CC4FAFF1F1E22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E22FFFBFBFBFFFFFFFFFFE6E1DFFF1F1E
      22FF1CC4FAFF1CC4FAFF1F1E22FF0000000000000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      00001EFF00FF1EFF00FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF7DFCD7FF000000FF000000FF0000
      00000000000000000058F1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FE
      A4FFF1FEA4FFF1FEA4FFF1FEA4FFEBC350FF0000000000000000000000000000
      0000000000005A40FAFF5A40FAFF5A40FAFF6047F9FFFFF5EDFFFFF5EDFFFFF5
      EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40FAFF5A40FAFF5A40FAFF5A40
      FAFF000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001F1E22FF1CC4
      FAFF1CC4FAFF1F1E22FF979698FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF1F1E22FF1F1E22FF1F1E22FFFFFFFFFFFFFFFFFFFFFFFFFF1F1E22FF1F1E
      22FF1CC4FAFF1CC4FAFF1F1E22FF0000000000000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF000000000000000000000000010E
      003C1EFF00FF19CD00E500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000FF000000FF7DFCD7FF000000FF000000FF000000000000
      00000000000000000058F1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FE
      A4FFF1FEA4FFF1FEA4FFF1FEA4FFEBC350FF0000000000000000000000000000
      0000000000005A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5
      EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF543C
      E8F6000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001F1E
      22FF1CC4FAFF1CC4FAFF1F1E22FF767577FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E22FF1F1E22FF1CC4
      FAFF1CC4FAFF1F1E22FF000000000000000000000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF
      00FF1EFF00FF0847008700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000FF000000FF000000FF00000000000000000000
      00000000000000000058F1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FEA4FFF1FE
      A4FFF1FEA4FFF1FEA4FFF1FEA4FFEBC350FF0000000000000000000000000000
      000000000000000000005A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFFFFF5
      EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5
      EDFFFFF5EDFFFFF5EDFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001F1E
      22FF1CC1F7FF1CC4FAFF1CC4FAFF1F1E22FF1F1E22FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1E22FF1F1E22FF1CC4FAFF1CC4
      FAFF1F1E22FF1F1E22FF000000000000000000000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF19CD
      00E5094800880000000600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000FF0000000000000000000000000000
      00000000000000000058000000FF000000FF000000FF000000FF000000FF0000
      00FF000000FF000000FF000000FF000000FF0000000000000000000000000000
      00000000000000000000000000005A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40
      FAFF5A40FAFF5A40FAFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFFFFF5EDFF5A40
      FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001F1E22FF1CBAEDFF1CC4FAFF1CC4FAFF1CC4FAFF1F1E22FF1F1E22FF1F1E
      22FF1F1E22FF1F1E22FF1F1E22FF1F1E22FF1CC4FAFF1CC4FAFF1CC4FAFF1F1E
      22FF1F1E22FF00000000000000000000000000000000000000001EFF00FF1EFF
      00FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001EFF00FF1EFF00FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A40FAFF5A40FAFF5A40
      FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40
      FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F1E22FF1F1E22FF1CC4FAFF1CC4FAFF1CC4FAFF1CC4FAFF1CC4
      FAFF1CC4FAFF1CC4FAFF1CC4FAFF1CC4FAFF1CC4FAFF1CC4FAFF1F1E22FF1F1E
      22FF00000000000000000000000000000000000000000000000019CD00E51EFF
      00FF010D003A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010E003C1EFF00FF19CD00E50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000F5A40
      FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40
      FAFF5A40FAFF5A40FAFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001F1E22FF1F1E22FF1CC4FAFF1CC4FAFF1CC4
      FAFF1CC4FAFF1CC4FAFF1CC4FAFF1CC4FAFF1F1E22FF1F1E22FF000000000000
      0000000000000000000000000000000000000000000000000000094800881EFF
      00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF
      00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF
      00FF1EFF00FF1EFF00FF1EFF00FF084700870000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000095A40FAFF5A40FAFF5A40FAFF5A40FAFF5A40FAFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001F1E22FF1F1E22FF1F1E
      22FF1F1E22FF1F1E22FF1F1E22FF1F1E22FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000060949
      008919CF00E61EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF
      00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF00FF1EFF
      00FF1EFF00FF19CD00E509480088000000060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Left = 704
    Top = 328
    object mnuVisualizarProdutos: TMenuItem
      Caption = 'Visualizar Produtos'
      OnClick = mnuVisualizarProdutosClick
    end
    object alterarCampanha: TMenuItem
      Caption = 'Ativar/Desativar'
      OnClick = alterarCampanhaClick
    end
  end
  object ImageList2: TImageList
    ColorDepth = cd32Bit
    DrawingStyle = dsTransparent
    Left = 784
    Top = 392
    Bitmap = {
      494C010104000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A8A6A3FFA8A6A3FF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CAC5C2FFA8A6A3FFA8A6
      A3FF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009EB33CFF9EB33CFF9EB33CFF9EB33CFF9EB33CFF0000
      000000000000000000000000000000000000000000004FAF4BFF4FAF4BFF4FAF
      4BFF4FAF4BFF0000000000000000000000004FAF4BFF4FAF4BFF4FAF4BFF4FAF
      4BFF000000000000000000000000000000000000000000000000D0CAC7FFD0CA
      C7FFA8A6A3FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000119600FF119600FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009EB33CFF9EB33CFF9EB33CFF9EB33CFF9EB33CFF9EB33CFF9EB33CFF9EB3
      3CFF9EB33CFF000000000000000000000000000000003C8639DF4FAF4BFF4FAF
      4BFF4FAF4BFF4FAF4BFF00000000000000004FAF4BFF4FAF4BFF4FAF4BFF4FAF
      4BFF4FAF4BFF000000000000000000000000000000000000000000000000D0CA
      C7FFD0CAC7FFA8A6A3FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000119600FF119600FF119600FF119600FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009EB33CFF9EB33CFF0000000000000000000000000B0D04459EB3
      3CFF9EB33CFF9EB33CFF000000000000000000000000000000004FAF4BFF4FAF
      4BFF4FAF4BFF4FAF4BFF4FAF4BFF00000000000000004FAF4BFF4FAF4BFF4FAF
      4BFF4FAF4BFF4FAF4BFF00000000000000000000000000000000000000000000
      0000D0CAC7FF1DA0F4FF1F1E22FF000000001F1E22FF1CC4FAFF1CC4FAFF1CC4
      FAFF1F1E22FF0000000000000000000000000000000000000000000000001196
      00FF119600FF119600FF119600FF119600FF119600FF00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009EB33CFF9EB33CFF00000000000000000000000000000000000000004FAF
      4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF00000000000000004FAF4BFF4FAF
      4BFF4FAF4BFF4FAF4BFF4FAF4BFF000000000000000000000000000000000000
      0000000000001F1E22FF1F1E22FF1CC4FAFF1CC4FAFF1F1E22FF1F1E22FF1F1E
      22FF1CC4FAFF1CC4FAFF1F1E22FF000000000000000000000000119600FF1196
      00FF119600FF119600FF119600FF119600FF119600FF119600FF000000000000
      00000000000000000000000000000000000000000000000000009EB33CFF9EB3
      3CFF000000000000000000000000000000000000000000000000000000000000
      00004A541CAF9EB33CFF9EB33CFF000000000000000000000000000000000000
      00004FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF00000000000000004FAF
      4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF0000000000000000000000000000
      000000000000000000001CC4FAFF1F1E22FFE6E1DFFFE6E1DFFFE6E1DFFFE6E1
      DFFFE6E1DFFF1F1E22FF1CC4FAFF0000000000000000119600FF119600FF1196
      00FF119600FF0000000000000000119600FF119600FF119600FF119600FF0000
      000000000000000000000000000000000000000000009EB33CFF9EB33CFF9EB3
      3CFF9EB33CFF0000000000000000000000000000000000000000000000000000
      0000000000009EB33CFF9EB33CFF000000000000000000000000000000000000
      0000000000004FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF000000000000
      00004FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF0000000000000000000000000000
      0000000000001F1E22FF1CC4FAFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1DFFFE6E1
      DFFFE6E1DFFFE6E1DFFF1CC4FAFF1F1E22FF00000000119600FF119600FF1196
      00FF00000000000000000000000000000000119600FF119600FF119600FF1196
      00FF0000000000000000000000000000000000000000596622C09EB33CFF9EB3
      3CFF515D1FB80000000000000000000000000000000000000000000000000000
      00009EB33CFF9EB33CFF9EB33CFF9EB33CFF0000000000000000000000000000
      00004FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF00000000000000004FAF
      4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF0000000000000000000000000000
      0000000000001CC4FAFF1F1E22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFE6E1DFFFE6E1DFFF1F1E22FF1CC4FAFF0000000000000000119600FF0000
      00000000000000000000000000000000000000000000119600FF119600FF1196
      00FF119600FF00000000000000000000000000000000000000009EB33CFF9EB3
      3CFF000000000000000000000000000000000000000000000000000000000000
      00009EB33CFF9EB33CFF9EB33CFF9EB33CFF0000000000000000000000004FAF
      4BFF4FAF4BFF4FAF4BFF4FAF4BFF4FAF4BFF00000000000000004FAF4BFF4FAF
      4BFF4FAF4BFF4FAF4BFF4FAF4BFF000000000000000000000000000000000000
      0000000000001CC4FAFF1F1E22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE6E1DFFF1F1E22FF1CC4FAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000119600FF1196
      00FF119600FF119600FF000000000000000000000000000000009EB33CFF9EB3
      3CFF000000000000000000000000000000000000000000000000000000000000
      0000000000009EB33CFF9EB33CFF0000000000000000000000004FAF4BFF4FAF
      4BFF4FAF4BFF4FAF4BFF4FAF4BFF00000000000000004FAF4BFF4FAF4BFF4FAF
      4BFF4FAF4BFF4FAF4BFF00000000000000000000000000000000000000000000
      0000000000001CC4FAFF1F1E22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE6E1DFFF1F1E22FF1CC4FAFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001196
      00FF119600FF119600FF119600FF000000000000000000000000000000009EB3
      3CFF9EB33CFF0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010301234FAF4BFF4FAF
      4BFF4FAF4BFF4FAF4BFF00000000000000004FAF4BFF4FAF4BFF4FAF4BFF4FAF
      4BFF4FAF4BFF0000000000000000000000000000000000000000000000000000
      0000000000001F1E22FF1CC4FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBFBFBFFE6E1DFFF1CC4FAFF1F1E22FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000119600FF119600FF119600FF119600FF0000000000000000000000009EB3
      3CFF9EB33CFF9EB33CFF000000000000000000000000000000009EB33CFF9EB3
      3CFF00000000000000000000000000000000000000004FAF4BFF4FAF4BFF4FAF
      4BFF4FAF4BFF0000000000000000000000004FAF4BFF4FAF4BFF4FAF4BFF4FAF
      4BFF000000000000000000000000000000000000000000000000000000000000
      000000000000000000001CC4FAFF1F1E22FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF1F1E22FF1CC4FAFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000119600FF119600FF119600FF0000000000000000000000000000
      00009EB33CFF9EB33CFF9EB33CFF9EB33CFF9EB33CFF9EB33CFF9EB33CFF9EB3
      3CFF9EB33CFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001F1E22FF1CC4FAFF1CC4FAFF1F1E22FF1F1E22FF1F1E
      22FF1CC4FAFF1CC4FAFF1F1E22FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000119600FF000000000000000000000000000000000000
      000000000000000000009EB33CFF9EB33CFF9EB33CFF9EB33CFF9EB33CFF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001F1E22FF1CC4FAFF1CC4FAFF1CC4
      FAFF1F1E22FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object popFlexHeader: TPopupMenu
    Left = 720
    Top = 248
    object mnuAlterarFlexHeader: TMenuItem
      Caption = 'Alterar'
      OnClick = mnuAlterarFlexHeaderClick
    end
  end
  object popPolitica: TPopupMenu
    Left = 800
    Top = 248
    object mnuAlterarPolitica: TMenuItem
      Caption = 'Alterar'
      OnClick = mnuAlterarPoliticaClick
    end
  end
  object popGrupoAtivacao: TPopupMenu
    Left = 616
    Top = 248
    object mnuALterarGrupoAtivacao: TMenuItem
      Caption = 'Alterar'
      OnClick = mnuALterarGrupoAtivacaoClick
    end
  end
end
