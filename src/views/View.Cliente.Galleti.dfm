object ViewClienteGalleti: TViewClienteGalleti
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 594
  ClientWidth = 940
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnFiltros: TPanel
    Left = 0
    Top = 0
    Width = 940
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    Color = 15418956
    ParentBackground = False
    TabOrder = 0
    object edtPesquisa: TSearchBox
      Left = 664
      Top = 0
      Width = 276
      Height = 25
      Align = alRight
      TabOrder = 0
      TextHint = 'Pesquisa'
      OnInvokeSearch = edtPesquisaInvokeSearch
      ExplicitHeight = 36
    end
  end
  object pgDados: TcxPageControl
    Left = 0
    Top = 25
    Width = 940
    Height = 489
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = pgLista
    Properties.CustomButtons.Buttons = <>
    ExplicitLeft = 8
    ExplicitTop = 19
    ClientRectBottom = 485
    ClientRectLeft = 4
    ClientRectRight = 936
    ClientRectTop = 24
    object pgLista: TcxTabSheet
      Caption = 'Lista'
      ImageIndex = 0
      ExplicitWidth = 872
      ExplicitHeight = 486
      object gPesquisa: TcxGrid
        Left = 0
        Top = 0
        Width = 932
        Height = 461
        Align = alClient
        TabOrder = 0
        ExplicitTop = -2
        ExplicitHeight = 406
        object gPesquisaDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          DataController.DataSource = dsConsulta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          Preview.Column = gPesquisaDBTableView1PES_OBSERVACAO
          Preview.Visible = True
          object gPesquisaDBTableView1PES_CODIGO: TcxGridDBColumn
            Caption = '#'
            DataBinding.FieldName = 'PES_CODIGO'
          end
          object gPesquisaDBTableView1PES_RAZAO: TcxGridDBColumn
            Caption = 'Raz'#227'o'
            DataBinding.FieldName = 'PES_RAZAO'
          end
          object gPesquisaDBTableView1PES_FANTASIA: TcxGridDBColumn
            Caption = 'Fantasia'
            DataBinding.FieldName = 'PES_FANTASIA'
          end
          object gPesquisaDBTableView1PES_TELEFONE: TcxGridDBColumn
            Caption = 'Telefone'
            DataBinding.FieldName = 'PES_TELEFONE'
          end
          object gPesquisaDBTableView1PES_CNPJCPF: TcxGridDBColumn
            Caption = 'Documento'
            DataBinding.FieldName = 'PES_CNPJCPF'
          end
          object gPesquisaDBTableView1PES_IERG: TcxGridDBColumn
            DataBinding.FieldName = 'PES_IERG'
            Visible = False
          end
          object gPesquisaDBTableView1PES_OBSERVACAO: TcxGridDBColumn
            DataBinding.FieldName = 'PES_OBSERVACAO'
          end
          object gPesquisaDBTableView1PES_TIPOPESSOA: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'PES_TIPOPESSOA'
            Visible = False
          end
          object gPesquisaDBTableView1TIPO: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TIPO'
          end
        end
        object gPesquisaLevel1: TcxGridLevel
          GridView = gPesquisaDBTableView1
        end
      end
    end
    object pgForm: TcxTabSheet
      Caption = 'Dados'
      ImageIndex = 1
      ExplicitWidth = 872
      ExplicitHeight = 486
      object lcPadrao: TdxLayoutControl
        Left = 0
        Top = 0
        Width = 932
        Height = 461
        Align = alClient
        TabOrder = 0
        ExplicitTop = -2
        ExplicitWidth = 873
        ExplicitHeight = 482
        object edtCodigo: TcxDBTextEdit
          Left = 11
          Top = 30
          DataBinding.DataField = 'PES_CODIGO'
          DataBinding.DataSource = dsDados
          Enabled = False
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Width = 41
        end
        object edtRazao: TcxDBTextEdit
          Left = 11
          Top = 76
          DataBinding.DataField = 'PES_RAZAO'
          DataBinding.DataSource = dsDados
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 2
          Width = 452
        end
        object edtFantasia: TcxDBTextEdit
          Left = 469
          Top = 76
          AutoSize = False
          DataBinding.DataField = 'PES_FANTASIA'
          DataBinding.DataSource = dsDados
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Height = 21
          Width = 452
        end
        object edtTelefone: TcxDBTextEdit
          Left = 265
          Top = 122
          DataBinding.DataField = 'PES_TELEFONE'
          DataBinding.DataSource = dsDados
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 6
          Width = 121
        end
        object edtCPFCNPJ: TcxDBTextEdit
          Left = 11
          Top = 122
          AutoSize = False
          DataBinding.DataField = 'PES_CNPJCPF'
          DataBinding.DataSource = dsDados
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Height = 21
          Width = 121
        end
        object edtRGIE: TcxDBTextEdit
          Left = 138
          Top = 122
          AutoSize = False
          DataBinding.DataField = 'PES_IERG'
          DataBinding.DataSource = dsDados
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 5
          Height = 21
          Width = 121
        end
        object edtTipo: TcxDBLookupComboBox
          Left = 58
          Top = 30
          DataBinding.DataField = 'PES_TIPOPESSOA'
          DataBinding.DataSource = dsDados
          Properties.IncrementalFilteringOptions = [ifoHighlightSearchText, ifoUseContainsOperator]
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsTipos
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 201
        end
        object edtObservacao: TcxDBMemo
          Left = 11
          Top = 168
          DataBinding.DataField = 'PES_OBSERVACAO'
          DataBinding.DataSource = dsDados
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 7
          Height = 89
          Width = 910
        end
        object btnSalvar: TcxButton
          Left = 715
          Top = 370
          Width = 100
          Height = 80
          Caption = '(F5) Salvar'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000000473424954080808087C0864880000000970485973000000DA000000
            DA01221704780000001974455874536F667477617265007777772E696E6B7363
            6170652E6F72679BEE3C1A00000182494441545885ED96314B026118C77F8F0A
            0DEA60E09E57536B1F2168A82122F22B440D4E4144904506AD456963B5472E7E
            82C6680AAA21D2EF703A847A4F8326A4A7777A77DAE07F7C799EF7F7E3BDE7E5
            3D9866C29171C2E6F3B5254B7451A93F5576121580D0B8E0A98299B3B09E51BD
            178DBCA5F2E6168CE9048C7CF55CD1FDAEE5868442EB810BF481B7A27C842706
            071024B019708403A077817C8254C1CCA11C0EAE9252B811DDF45D6018F86746
            BE7D1518160E3E5EC351E07F048C9BDA2A6AADA8A5AFE564FC96B434DDC2DD0C
            9C4031118EA55FB6A5DEB56E67DF6B1A041C40E60A6646940B9B364709AF7080
            902807F6ADBAD68CD41E162E75262838B41E23EDBF85BD845FF05F81B34105DD
            127EC2DBB560E4CD13852387D21258EF207B7EC13B0200C6B579AC42D64DD320
            49B7B7A747C0BBC4F0F01E81D1254683DB0A80DB99F00EEF2BE05EC21B7CA080
            B38477B8A3407F097FE0E0E2B7FC6B379E4539EDA0A1381B8E6EF8016FEFE72E
            C65575594513E564EC7198A77A9A7F9F1F773FF86FFC551E140000000049454E
            44AE426082}
          OptionsImage.Layout = blGlyphTop
          TabOrder = 8
          OnClick = btnSalvarClick
        end
        object btnDesfazer: TcxButton
          Left = 821
          Top = 370
          Width = 100
          Height = 80
          Caption = '(ESC) Desfazer'
          OptionsImage.Glyph.SourceDPI = 96
          OptionsImage.Glyph.Data = {
            89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
            F40000000473424954080808087C0864880000000970485973000000DD000000
            DD017053A2070000001974455874536F667477617265007777772E696E6B7363
            6170652E6F72679BEE3C1A00000295494441545885D5974D48545114C77FE73D
            1575DE64411004996F348C18941639144452B4AD5D8BA05D9A0FC90A0257E22E
            A14551A6231685B52AF71115D126FAA0450AB991666A5B03D5CC3869F371DA64
            3D6D6CDEE88C83FFDD3BF79DFBFF712E9C7BAEA82A95945151F70D0D608F253B
            03E1E4D9B50254159BB0E32A753575C92151FA000186D70DC01E8987AA6B8D09
            555AD7625A344070929A542C392886D10F98A532F7041008CFB581DE05DA4B69
            5C10402631ED58A21F6410A82987F98A008170A2D5C698000995CB7851E2EE84
            02D2343AD727A243409DC73D620833A2CCE4602A47F6FE27A7E16BD100F6D8B7
            26D1AA3B40A767FCFC4A8972CF5086677BADF79E0002E1C469902B807F8DE66E
            A92097B798BE81B7DDA45704B0C3897194AE121A2FB778639A9993B3DD0D1FF2
            AD1AA87A3DEB554A3BB219F345CB68BC252F40C4F19F02ED0212656310B6E5C4
            7CDC7823B5FD1F008088E3BFA59269039E970D02B5ABCCDCC3E0E4D29EF2E736
            8CF66CFE1875ACC3AA721EF851268AF6542C39E00E48BE8928104EB48231015A
            B011196A36668DDC1E8120AAC781830552D218B22F72C637B52200786FC511C7
            12F7F7AEF1EFCDD98CE120D20754E7CB51781675AC23FF055854A1CB6839C0D2
            3C6E8276E4DF59DA238E6FBAE04414717CD3F55BAD0EE012902DF4BF3B2FFAD9
            B75F910B2073CBD75539071E2AE0963D120F89614CC0DF8164A50AB8151899DF
            89917DB0AC1A89A86335143513467B37BD4ECF5B7B45B80678268FF4D67E3233
            0B47515EBAC2FEE6D17873511570CB0E270F21B4477BACEB5E7376DF8EF91716
            6A1F091CF81D3AB16A80D52A38FAC54A49FD53D0902243EB0E00D032960CE694
            77A04F2A020010184B8E93E358D1EF8252C94CFFBC98ABAE7E55B10A2C6AE3BE
            0D4BA55F4DF0F506602D5A8B0000000049454E44AE426082}
          OptionsImage.Layout = blGlyphTop
          TabOrder = 9
          OnClick = btnDesfazerClick
        end
        object lcPadraoGroup_Root: TdxLayoutGroup
          AlignHorz = ahClient
          AlignVert = avClient
          ButtonOptions.Buttons = <>
          Hidden = True
          ItemIndex = 4
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahLeft
          CaptionOptions.Text = 'C'#243'digo'
          CaptionOptions.Layout = clTop
          Control = edtCodigo
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 38
          ControlOptions.ShowBorder = False
          Enabled = False
          Index = 0
        end
        object dxLayoutItem2: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          CaptionOptions.Text = 'Raz'#227'o Social'
          CaptionOptions.Layout = clTop
          Control = edtRazao
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem3: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup3
          AlignHorz = ahClient
          AlignVert = avClient
          CaptionOptions.Text = 'Fantasia'
          CaptionOptions.Layout = clTop
          Control = edtFantasia
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem4: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignHorz = ahLeft
          CaptionOptions.Text = 'Telefone'
          CaptionOptions.Layout = clTop
          Control = edtTelefone
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object dxLayoutItem5: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          CaptionOptions.Text = 'CPF/CNPJ'
          CaptionOptions.Layout = clTop
          Control = edtCPFCNPJ
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem6: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup4
          AlignVert = avClient
          CaptionOptions.Text = 'RG/IE'
          CaptionOptions.Layout = clTop
          Control = edtRGIE
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 121
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem8: TdxLayoutItem
          Parent = dxLayoutAutoCreatedGroup2
          AlignHorz = ahLeft
          AlignVert = avBottom
          CaptionOptions.Text = 'Tipo'
          CaptionOptions.Layout = clTop
          Control = edtTipo
          ControlOptions.OriginalHeight = 21
          ControlOptions.OriginalWidth = 201
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object dxLayoutItem7: TdxLayoutItem
          Parent = lcPadraoGroup_Root
          CaptionOptions.Text = 'Observa'#231#227'o'
          CaptionOptions.Layout = clTop
          Control = edtObservacao
          ControlOptions.OriginalHeight = 89
          ControlOptions.OriginalWidth = 185
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
          Parent = lcPadraoGroup_Root
          LayoutDirection = ldHorizontal
          Index = 0
        end
        object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
          Parent = lcPadraoGroup_Root
          LayoutDirection = ldHorizontal
          Index = 1
        end
        object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
          Parent = lcPadraoGroup_Root
          LayoutDirection = ldHorizontal
          Index = 2
        end
        object dxLayoutGroup1: TdxLayoutGroup
          Parent = lcPadraoGroup_Root
          AlignHorz = ahClient
          AlignVert = avBottom
          CaptionOptions.Text = 'New Group'
          ButtonOptions.Buttons = <>
          LayoutDirection = ldHorizontal
          ShowBorder = False
          Index = 4
        end
        object dxLayoutItem9: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnSalvar
          ControlOptions.OriginalHeight = 80
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 0
        end
        object dxLayoutItem10: TdxLayoutItem
          Parent = dxLayoutGroup1
          AlignHorz = ahRight
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Control = btnDesfazer
          ControlOptions.OriginalHeight = 80
          ControlOptions.OriginalWidth = 100
          ControlOptions.ShowBorder = False
          Index = 1
        end
      end
    end
  end
  object pnlAcoes: TPanel
    Left = 0
    Top = 514
    Width = 940
    Height = 80
    Align = alBottom
    BevelOuter = bvNone
    Color = 15418956
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 508
    object btnAdicionar: TcxButton
      Left = 700
      Top = 0
      Width = 80
      Height = 80
      Align = alRight
      Caption = '(F2) Add'
      Colors.DefaultText = clWhite
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000000970485973000000EC000000EC01792871BD0000001974455874536F
        667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000023749
        4441545885CD56416B134114FEDEDBC9666352A39188AD162D15117A135AB078
        B022F4EAA107C1AB07FF414184A07FC08B07FF80871EF564F5D0F6A0A58A478F
        6261B58889D112D364373B331E4AD23426D9C9265DFD4E6F67BF37DFB7336FDE
        0EA189AB6F734E9038811850178D5FD89C2F030065EF6E4CF9E5C41BE95AE371
        8837614DAA1D3BE75F137ED55E952EC72A0E00D2E5892069BF64E5F274DCE24D
        042E5F14DA03B70FF21975A4A2EADB819CF6C0A293907B5A3B5203A55BE943CF
        7F193045F089517D660300D2777C88E9682B17D940E5B103F985F6E3EF0E4E3E
        D98B340F8753BA437EA5AE716C06A07BC403C27C0B1441FD2040F678DDAC6E0B
        E0531A6033574606826DC6EE4307FA67EFA52EDF4BB562CE2B640B1EAC73E185
        69B405F51789BEE29D504546ED79C2886B5603E9704A272833C22D482FF95025
        407EE656BDB57734E0A0831200714921B5D4189D01CA6A1C5FF60E8D7576B4A8
        1D34FA311C11221B20AB7B1C9B013123BBC603CF1335716CB90E6F75FFA82517
        CD0ACEC880AA9A27B70B0F92D70EB267B786E8E4C3832983E8EB37242883068B
        0B72E35F1910537A8D30F3D13E36BFBBA276E8A6AE502A3C6D78D098AEF1B87E
        BDB799BD1D87DEFF8DF07FECF535913EEFBC9245CC2120B3C625B4B24EEBADEA
        B6B788F585A02F356CAECC65FB81FF81178C845B20A8226E64AE24EEFF5EC7A3
        7ECCD02F228D89C1C4DB7299CF8671420DC862B2C0795519549CF3AAA24AA210
        C633BE67A566DF4D6A90D13D8BA01BB5F773AE09F70FD971AD38B53B254D0000
        000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 0
      OnClick = btnAdicionarClick
      ExplicitTop = 2
    end
    object btnEditar: TcxButton
      Left = 780
      Top = 0
      Width = 80
      Height = 80
      Align = alRight
      Caption = '(F3) Editar'
      Colors.DefaultText = clWhite
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000000473424954080808087C0864880000000970485973000000EC000000
        EC01792871BD0000001974455874536F667477617265007777772E696E6B7363
        6170652E6F72679BEE3C1A000003CE494441545885E5965D685B6518C77FEF39
        27693E9AA6ADFD48B5CCC50ADD68874AC1ADC2E86C4A571913C14DDC1828DBCD
        ACD4B9B1EEA6EB4410C19B3144230A4AA976825F28964D10D115C18A38E88754
        6FDA4E6DB336ABAB6DD3AD497B1E2F9A265B9798A44DBDF10F87C07B78FEBFFF
        93F77D390FA496A6D972DB95CD35A9744B5873DEF50B188FA651971D69CEE20E
        406E7B347D09C3A8CF86BF9E64BD40CFF33C6529DDF2C4E2D4F031A55B54E1BE
        377037B6218B0B44C6FA94662FF459CB1F3296E6022E4C73381B61E2D2F477B9
        A563DBFD755276AA5FCA4EF58BE7C55E4169B7FF23D0B06654F4B716F80E5408
        10CCA5C30096B26AEC5B9B706E3F1C2B50560779BB4E60AB6C44B3E7AF2C7F1D
        0D320EBC0714A51B40018F003D24D88EFC3DAF60AF7A3C69F1D4F96709FF7939
        D1AB21A006B8912A8001BC0AE86E5F0B057B4FA3AC0E829D4799EBED223C3E80
        326C498B253C0F80E7F94FB15735B238F53B13EF1C24FC47DF56E039E06CAA00
        0AA5428838369F9B40591D00CC0F7CC5C45BFB53D502A0BB3D94BF7419CDE602
        60AEB78B60E751802EE050AA7A03110710830338B63551DAFC09A19F3FC3BC39
        97BCB8B01C777D730CBECAC79A4E0346B2178EEADD38AA77A7E3B12EDD112012
        F89570602833174DC75E59876677AF3FC0F8D946CCD0F58C8D5C3B8F5074E0DC
        FA03E437B5B230F253662E9A4EEEC34F670C4F18C0ED6B5993D15AF5BF3B0335
        4015D00DFC9530C0469D819202EDB5E0B4D92A8202AE00F5C070D6CF80A5A402
        65584516C3832B6B5E0F6F8E5C359B0D1DB66C520C8EC8BDC0B7409D62F92B86
        D73F0B64E70C48E46660F458F1DD7138CD860E1F9EB1D0B45DE3B1D608DF0F98
        00DF100D205EFFAC78FDB3A2390B567FEBD37A5C3B8FC43CBCFED9B115382086
        8E7CFCB245E4528EC8A51CF9ED03AB00A214331B76065677BE6FD7F2E831795D
        78B23D0280D542CF1D5B900D49774B68F442873311DC773CC2E0885094A702D7
        66E4412D8557E6F08B2719BDD0E1D435E86C8BC383D342C3896578B19BE0B519
        A90126B31A402E9E64F4CBB759811FF0C5E1BEE311068697E1C1BF7900080068
        28350FF1E9265BF0830DA9E1B03C0736029BCDF00D6C15B52823AD39222BF015
        D5021132B8729A3D4FEE39FDA378FDB35274C82F44AFDA47B75CB589CFAD52ED
        55024871811A074AFEAD891DC00FC0425A21347DA6704FDBFE0A7FA8C6E22AEA
        01E4F5178C187CF28B38BCB4505D4D055F9772AC8C0132F4BE3506DF765FB473
        37938067C3E0800B30350D397FC622EDCFE852B9E93FEA3CAA1D24D8A2FC5CAE
        A40B4F3A15A7A90960CAA2336F9AF42F09FD40DFF41CDD40281D837F0064D7CF
        B74042766D0000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 1
      OnClick = btnEditarClick
      ExplicitLeft = 820
      ExplicitHeight = 60
    end
    object btnApagar: TcxButton
      Left = 860
      Top = 0
      Width = 80
      Height = 80
      Align = alRight
      Caption = '(F4) Apagar'
      Colors.DefaultText = clWhite
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000000473424954080808087C0864880000000970485973000000EC000000
        EC01792871BD0000001974455874536F667477617265007777772E696E6B7363
        6170652E6F72679BEE3C1A00000331494441545885C5974D681D5514C77FE7DE
        99A4D2A4B50D4D0B4993D2850BE94E6851D0142AAEB2B02E85D658B122E24644
        A276D70F6D032E846611D04DEB4225B86894826088A891D6A05285226D342126
        4492D434794DDF9B79F7B83099BE8F99D779380FCF6AEE39E79EF3BB77E6FDEF
        7D421DD671F44C9BB5FE7B28BDC076007EFF0304C4F30B6C6AFE686AE4ECB17A
        6A9A7A92ADF13E46390A58D049D0493C2F50EB851A844DBAB2FA7C776FFFB97A
        6A7A6913F7F4BDB3C7218740AFB99C7760E6D3D7D64AE35DBDFD6FB2B272C605
        F93EE08DB47553EF4051FDAE7F9FE4A7CAE600797FD3070012EA96B4350164E3
        A1FBB98141153A6BE4B6018FA1CC20FC187967E7F603886054D90128F057CDAE
        C62E4C5F1ED807A5AF4038043C9402B9134A40F37958EF1A65C0CE9A257C7F5B
        C472DF860DB6FF1D207A050E5D12950504112306C408222A628475AF88004644
        4411238214AD57B208ADACAF5AE652105107850D8F54CE38FCADBEAD702AED0A
        EE7E933613CC0EBEFCE2983C55E6AB4C72309BBE647D2686E92AA82A8730D728
        002C93F705289AC6ED80355CAF09B0F7F8BB5B674647FDD8D90AF9E5250A2BCB
        912B7FFB6F72CB37A371B0B64821370F5AF5310230FFF3D8ADBD4F1EDF1A0BD0
        DD77EE7458B0B7167E9BF8415DB16AB22B86FCFAC987DCB83C1CF9AE7F7681A9
        F1F7A3F1D495416E8C9DC4B9B0BABB81B9ABC35F8581BFB4FB89574E9601EC7E
        61609F226F018242782717BB82FF64D68173004684135D8FBFFA70044028DB4B
        730B0D005009CAC786B608A0BDB9751CB8BA110CEEAC660FA06507E895F6D5FC
        F711C0C4D04B81CBD91E842340BF6D6A1ECF1A403C3B87D28FC81123B99E8989
        A1004AA478FD8CBF08F0C88BAF7B0A8F6609605B5A7F99FEFAFCD94A7FEC61D4
        08358C53C1448086A8618C0A260234420DE354301140D7B20770702D35C0A583
        2C02F9CCBA1B1879969B09A1181351603EABFEE21122E2E26289FF0B146605BA
        EE31092DBB3A696ABD77EBDEBCB383DCEC42347EE0C16EBCE61644CAD7253E55
        D7F828961478FA3B1D46792629BE61696E44760B7F7EFEB2C45EF9132FA5EAB2
        FB29AAC762522C1120532DB0C9DF532240966A98A482350132DE81581504F807
        DB050AC725B61AF00000000049454E44AE426082}
      OptionsImage.Layout = blGlyphTop
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      TabOrder = 2
      OnClick = btnApagarClick
      ExplicitLeft = 866
      ExplicitTop = 2
      ExplicitHeight = 60
    end
  end
  object dsConsulta: TDataSource
    DataSet = ServiceConexao.qrPessoasPesquisa
    Left = 20
    Top = 537
  end
  object dsDados: TDataSource
    DataSet = ServiceConexao.qrPessoas
    Left = 76
    Top = 537
  end
  object dsTipos: TDataSource
    DataSet = ServiceConexao.qrPessoaTipo
    Left = 160
    Top = 546
  end
end
