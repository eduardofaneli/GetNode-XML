object frmGetNode: TfrmGetNode
  Left = 150
  Top = 53
  Caption = 'GetNode'
  ClientHeight = 641
  ClientWidth = 1138
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMemo: TPanel
    Left = 582
    Top = 0
    Width = 556
    Height = 641
    Align = alRight
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
    object gbRetornoGetNode: TGroupBox
      Left = 0
      Top = 140
      Width = 552
      Height = 497
      Align = alClient
      Caption = 'Retorno GetNode'
      TabOrder = 0
      object memoRetorno: TMemo
        Left = 2
        Top = 15
        Width = 548
        Height = 480
        Align = alClient
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
    object gbRetornoTag: TGroupBox
      Left = 0
      Top = 0
      Width = 552
      Height = 140
      Align = alTop
      Caption = 'Retorno GetTag'
      TabOrder = 1
      object mmGetTag: TMemo
        Left = 2
        Top = 15
        Width = 548
        Height = 123
        Align = alClient
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object pnlEsquerda: TPanel
    Left = 0
    Top = 0
    Width = 582
    Height = 641
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    object memoEntrada: TMemo
      AlignWithMargins = True
      Left = 3
      Top = 356
      Width = 576
      Height = 282
      Align = alClient
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object pnlCaminho: TPanel
      Left = 0
      Top = 0
      Width = 582
      Height = 62
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object btnCarregarXML: TPngBitBtn
        AlignWithMargins = True
        Left = 3
        Top = 31
        Width = 576
        Height = 28
        Align = alClient
        Caption = 'Carregar XML'
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        OnClick = btnCarregarXMLClick
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000001734944415478DA6364A0
          31601CB5600458E0BB75B50F909A04B44A91CA66DFFBCFC890CBE8BB6DCD2320
          4796461E7808B2E03F6D83088B05ECCCCC0CE12A9A0C2BEE5C6770955160B8F6
          EE0D839D942CC3D1174F19EE7C7CCF10ACA40EA6F9D9D819EE7DFAC0F0E4EB67
          D22C00816A234B86DB40437CE45518D20EEE6058E5E6CFB0F5E15D8655776F30
          2C70F2065BAECC27C0B0E7C90386132F9F916E81A6A030439BB91DC39ABBB718
          96DEBECAB0D2D59FE1E1E78F0C1B1FDC6148D6D463D80D3498220BF485C5181A
          4CADC1062EB87199619D7B20C371A0419C2C2C0C9F7FFD6278F1FD2B6516B402
          5D7FF4F9138668356D86CC43BB189638FB304CBE7C96214C4583E1C0D3470CFF
          806A4016BCF8F6151C1F475E3C61F8F3EF1FF191EC2DAFCCB0E5C15D066B4969
          86BB1F3F30988A49825DAB010C3A900F4040909D9D418A9B17CCDEF8E036C3AF
          BF7F89F701B500C88227405A9A46E63F8614158C0C3381764951D9F0A7C0A222
          6D1894A6A3160CB80500D07EA59BA8F44D560000000049454E44AE426082}
      end
      object pnlCaminhos: TPanel
        Left = 0
        Top = 0
        Width = 582
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object edtCaminhoArquivo: TEdit
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 542
          Height = 22
          Align = alClient
          Color = clMenu
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 21
        end
        object btnLimparCaminho: TPngBitBtn
          AlignWithMargins = True
          Left = 551
          Top = 0
          Width = 28
          Height = 28
          Hint = 'Limpar XML carregado'
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alRight
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = btnLimparCaminhoClick
          PngImage.Data = {
            89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
            F800000006624B474400FF00FF00FFA0BDA793000001E44944415478DA6364A0
            31601C991604E7D5A8B230339DF9CFF08F999D99D362714FF515AA59105FDAAC
            FCFDF7AFABFFFEFD6507F19998997FB1B070982FEBAEBE40B1053155FD922CCC
            7FF6FFFAF15DFDD7CF1F70712626C6DF2C1CEC96CB3AEACE926D01CC7020531D
            C4075AC2408C25445990D4D029F5EF2FD33E98E130408C25042D486BE811F9F5
            F7FF1E20531F9BFC4FA025BF912C616462FAC9C0CC65B4BAB7EA1A410BCEDCBC
            2972EBDEF349BB8E9D8EC4A70EDD12661696EB2BFB9AB4F05A70EEC60D294606
            1670B03C7CF6F2D886FDC7AC88B20468223B0B67C9D2DEDA5E9C16201B0E137B
            F4FCD5C1F5FB8EDA13B0E4D7BF3FFF6B56F6D777E38C03A8E1A0D4A2862EF7E8
            F96BA02547B05AF29F81E10B23C37FAF05CD658791C51989351C9F25B80C47B1
            8018C3B15902329CF91FA3E7BCD69223D8D4C22D387FE3CE2920654AC87018B8
            FFF4C5AE4D078E5B32FD63F4C265388A05176EDC01165E0CC6C45A0004DFCFDD
            BCE39DECEFB11F9F22840FEEDF17F8FFF3EF5EA0801111867F666464F4325057
            3E4248216A24DFBE2DCAF887F10050540B9FE140EC69A8A17294186F6224D3CB
            97EF89FF65FD7BE03F03A306A58663B500042EDEBE2DF3EF2FE34120530926F6
            EFFF7F86576FDF33FCFCF59BA0A1014ED68C782DA02618FA160000DD17EC1974
            79B1010000000049454E44AE426082}
        end
      end
    end
    object Node: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 65
      Width = 576
      Height = 172
      Align = alTop
      TabOrder = 2
      object lblCont: TLabel
        Left = 28
        Top = 80
        Width = 3
        Height = 13
      end
      object lblExpressaoRegular: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 566
        Height = 13
        Align = alTop
        Caption = 'Express'#227'o Regular'
        ExplicitWidth = 90
      end
      object Label1: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 61
        Width = 566
        Height = 13
        Align = alTop
        Caption = 'Node'
        ExplicitWidth = 25
      end
      object btnProcessarNode: TPngBitBtn
        AlignWithMargins = True
        Left = 5
        Top = 139
        Width = 566
        Height = 28
        Align = alBottom
        Caption = 'Processar Node'
        ParentShowHint = False
        ShowHint = False
        TabOrder = 0
        OnClick = btnProcessarNodeClick
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000001394944415478DA6364A0
          31604417E87EFDD981E1DF3F07144126A603A5A2BC07A863C1CB8F0D0C8C8CF5
          2882FFFF37968AF3378C5A40270BA091CCF495C901C4FFC7FDEF0055231906FA
          4FFE04BBB8D09C9D2C97936D81CB7C0F90CF1C90840EEC49DC7100590EC86FA0
          C48286FF8CFFE171C4F89FB11166204C6E6FC24E46A22C606464A84717BFF57A
          39C34D20A68A0534F701B171C0C4FCEFCDBFBF8C3140E36C80165833FE67E8FC
          CFC4F07C6FFCCE89D44945FF19189D16B9AF011A1C0415F9F99F91C16E5FFCCE
          53245B809111A199D07AAE1F2F3BF34F90811A40F9ECBDF13BA6111144FF8141
          C1780059FC9FE82F877F3CFFEDD12D80049F97EE7F863F197B137765131907A4
          59800D502D88A86601A980741FA0D778040AC2810D226C45C53F813F0C7F05FE
          2204C8B50017A09A0F705A40621C0000D25F0428814A174C0000000049454E44
          AE426082}
      end
      object edtNode: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 77
        Width = 566
        Height = 21
        Align = alTop
        Color = clInfoBk
        TabOrder = 2
      end
      object rgXML: TRadioGroup
        AlignWithMargins = True
        Left = 5
        Top = 104
        Width = 566
        Height = 31
        Align = alTop
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Xml do Arquivo'
          'Xml do Memo')
        TabOrder = 3
      end
      object edtExpressaoRegular: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 34
        Width = 566
        Height = 21
        Align = alTop
        Color = clInfoBk
        TabOrder = 1
        TextHint = 'Ex: (ns[0-9]{1,}\:)|(\:ns[0-9]{1,})'
      end
    end
    object gbTag: TGroupBox
      Left = 0
      Top = 240
      Width = 582
      Height = 113
      Align = alTop
      Caption = 'Tag'
      TabOrder = 3
      object edtGetTag: TEdit
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 572
        Height = 21
        Align = alTop
        Color = clInfoBk
        TabOrder = 0
      end
      object btnGetTag: TPngBitBtn
        AlignWithMargins = True
        Left = 5
        Top = 80
        Width = 572
        Height = 28
        Align = alBottom
        Caption = 'Processar Tag'
        TabOrder = 1
        OnClick = btnGetTagClick
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F800000006624B474400FF00FF00FFA0BDA793000002BF4944415478DAED945F
          48537114C77FBFDFBD61B44D0B3490A89C4445440F0991A4DB15C29873E58469
          6F4142E075102194BDC4A007293224360D227CCA07CD4D9A7F88B06D2AD54306
          09650CD99F42AC6550EE6634F5773AF721DD1CB6A4F6E6810BDFDFEFFCCEF99C
          7BCEEF5E4AB26C74139015405147DCC838CC86ECB9C1AC00F4AEF814461E2404
          0C613977ECBF02F63ABF1F658C4F10209FC205DA5DA48E2E6F182059BCF920B2
          6E0670D5D75F3D91EC2BEE546E00C06520A43322EB6449F289B063A10DD7C151
          8FD995115062F16ED38A6C04E571F47A036EF3E9152700D5772A5154BB31A184
          8080D1EA2D258405704FA094D6FBDD550FD705984C43390B5B61186505661B4F
          880B95CF7BEB7EACB4E7EE7C29E3F41906CD8462DA3DC441B9BA6FA81DAAA700
          DD289719038BAFAFFA713AC0E160C6D7C71E60E2B3B87A2B929F86114FED97D4
          F6C4DB01C8450C6A0FC9BA4BC93E63ED804C80AA2D8A636B2B7EB7760520D50C
          DC024A9B514605919F78DA6B9949E95D0F08FA39E503AA4220BC3422E7BD489B
          DD6A8ECF38F9B2718F39B80AB00E3AB1AF4D282308285B0B50EF3E1EF6634D91
          70A3A698500A6B0106EB602B9E69413947192FF7F759DE25CD00A8641DEE0202
          E70885692AD0727FAFF96312A0030F37E2206F861AB557D2AAB70EB620B115E5
          37CE9861ACCF349936E4920B2FB76862312F16770A97931412467FBFF5ABE400
          31BA5399C5BD7CCE5949D4AE79955279CD400382EFA14C6071A680BBDAB7EE35
          3D697B92B7B89418457904DD8F029EAA337A97528981EACD088665DD8194E1AE
          5E53119F8680C7DCF5C7EF40B572DB50015B846E2EB066F5558B5CCA7D7CABF3
          F8F55E0F37E9AE259FB5D97A84D892E6360EF7FDA8BBAA6D6DAE8CBF8A7D7720
          675954D4596C1738393C6DD7BDC914B32180DE19371046D4164C617B0E6D24F9
          5F01542B76CEEFE78C16AABF86AC00FEC5360119ED1722A711286E9C2D770000
          000049454E44AE426082}
      end
      object rgTag: TRadioGroup
        AlignWithMargins = True
        Left = 5
        Top = 45
        Width = 572
        Height = 32
        Align = alTop
        Caption = 'Buscar Tag'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Xml Entrada'
          'Xml Node')
        TabOrder = 2
      end
    end
  end
end
