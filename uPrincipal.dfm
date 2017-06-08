object frmGetNode: TfrmGetNode
  Left = 177
  Top = 54
  Caption = 'GetNode'
  ClientHeight = 620
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
    Height = 620
    Align = alRight
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = 356
    ExplicitHeight = 442
    object memoRetorno: TMemo
      Left = 0
      Top = 0
      Width = 552
      Height = 616
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
      ExplicitHeight = 438
    end
  end
  object pnlEsquerda: TPanel
    Left = 0
    Top = 0
    Width = 582
    Height = 620
    Align = alClient
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 356
    ExplicitHeight = 442
    object memoEntrada: TMemo
      AlignWithMargins = True
      Left = 3
      Top = 185
      Width = 576
      Height = 432
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
      ExplicitLeft = 2
      ExplicitTop = 196
      ExplicitHeight = 421
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
          F800000006624B474400FF00FF00FFA0BDA793000001E74944415478DAE5D44F
          4854411CC0F15954A25B60084145E8821D3CA8082994927F10A190442F764F50
          0A127525108F628148A8E0C98B7AD20ED222622A686407978440A80E75A81021
          F126E9867D7FBCDFC432BCF77C0A1DC481CF6167E6CD6FE73733BF98F9CF2D76
          6E03C4711DCBA70D908D23FC09184FE2326EE9EF2C5D2B1D35C07394A30EBF9D
          B10BD8C510FAF4F71BBC43224A8026CC6210BD3EE3D558421556B54FE676A319
          AFC202E423858FBA50DA27C000DA919B312E295D41114AF1D52F806CF52D6EA0
          04DF03D297D2B146A7FF2A3EE8E2B771E00618C663DCC37CC0E279D8C6138CF8
          8C37E0355EE26966009B77D9FE3313DC5A3185427C0E98236B24EC7948806BBA
          B52FA8C461488009E31D6E7EC89C1CACA140CE4302C435AF5BC7048869EE2505
          6D1102DC44994D91E47D0EA37A0E7E4D6E88DCAE16CC840490B3915B761FC9CC
          437E812E3CC4B4CF879DC67B80F282F70216976F2775AD1EBB6DDBEC5D2E96AD
          E193F3B1DCAC4BA808585C0E7E039BB86BF48DB80FCDDEE59FC62B15FBDA7F11
          BFF49FF5FB2C2EE3EF71C5780FEDDF1BF22B153558C0383AB4AF168BB863BCC7
          E8B6313C42BDF1CA88090B60CF432AA52D76526BDA34FF6EF9B0C56EDDE63D4A
          00B75C4BDABEE141C0FC13976BB7496DDAC18F88F34F1CE0D4EDEC07F80B7FD4
          625A084423990000000049454E44AE426082}
        ExplicitTop = 30
        ExplicitHeight = 25
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
          ExplicitWidth = 426
          ExplicitHeight = 19
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
          ExplicitLeft = 547
        end
      end
    end
    object Node: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 65
      Width = 576
      Height = 114
      Align = alTop
      Caption = 'Node'
      TabOrder = 2
      object lblCont: TLabel
        Left = 28
        Top = 80
        Width = 3
        Height = 13
      end
      object btnProcessarNode: TPngBitBtn
        AlignWithMargins = True
        Left = 5
        Top = 81
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
        Top = 18
        Width = 566
        Height = 21
        Align = alTop
        Color = clInfoBk
        TabOrder = 1
      end
      object rgXML: TRadioGroup
        Left = 2
        Top = 42
        Width = 572
        Height = 35
        Align = alTop
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Xml do Arquivo'
          'Xml do Memo')
        TabOrder = 2
      end
    end
  end
end
