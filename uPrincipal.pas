unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  PngBitBtn, Vcl.ExtCtrls, System.RegularExpressions;

type
  TfrmGetNode = class(TForm)
    pnlMemo: TPanel;
    pnlEsquerda: TPanel;
    memoEntrada: TMemo;
    pnlCaminho: TPanel;
    btnCarregarXML: TPngBitBtn;
    pnlCaminhos: TPanel;
    edtCaminhoArquivo: TEdit;
    btnLimparCaminho: TPngBitBtn;
    Node: TGroupBox;
    lblCont: TLabel;
    btnProcessarNode: TPngBitBtn;
    edtNode: TEdit;
    rgXML: TRadioGroup;
    gbTag: TGroupBox;
    btnGetTag: TPngBitBtn;
    edtGetTag: TEdit;
    gbRetornoGetNode: TGroupBox;
    memoRetorno: TMemo;
    gbRetornoTag: TGroupBox;
    mmGetTag: TMemo;
    procedure btnCarregarXMLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnProcessarNodeClick(Sender: TObject);
    procedure btnLimparCaminhoClick(Sender: TObject);
    procedure btnGetTagClick(Sender: TObject);
  private
    FXml: TStringList;
    function GetNodePos(XML, Strtag: String; AUtf8ToAnsi: Boolean = True): TStringList; overload;
    function GetNodePos(AExpressaoRegular,XML, Strtag: String; AExpressaoRegFlag: TRegExOptions = []; AUtf8ToAnsi: Boolean = True): TStringList; overload;
    function GetTagPos(XML, Strtag: String; AMantemCaseDoResult: boolean = false; AUtf8ToAnsi: Boolean = True): String; overload;
    function GetTagPos(AExpressaoRegular, XML, Strtag: String; AMantemCaseDoResult: boolean = false; AExpressaoRegFlag: TRegExOptions = []; AUtf8ToAnsi: Boolean = True): string; overload;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGetNode: TfrmGetNode;

implementation

{$R *.dfm}

procedure TfrmGetNode.btnCarregarXMLClick(Sender: TObject);
var
  OpenXML: TOpenDialog;
begin

  OpenXML := TOpenDialog.Create(Self);

  try

    OpenXML.InitialDir := GetCurrentDir;

    OpenXML.Filter := 'Arquivo XML | *.XML';

    if edtCaminhoArquivo.Text = EmptyStr then
      if OpenXML.Execute(Handle) then
      begin
        edtCaminhoArquivo.Text := OpenXML.FileName;
        FXml.LoadFromFile(edtCaminhoArquivo.Text);
      end;

  finally

    FreeAndNil(OpenXML);

  end;

end;

procedure TfrmGetNode.btnGetTagClick(Sender: TObject);
begin

  case rgXML.ItemIndex of
    0: mmGetTag.Text := GetTagPos(FXml.Text, Trim(edtGetTag.Text));
    1: mmGetTag.Text := GetTagPos('(ns[0-9]{1,}\:)|(\:ns[0-9]{1,})', memoEntrada.Text, Trim(edtGetTag.Text));
  end;
end;

procedure TfrmGetNode.btnLimparCaminhoClick(Sender: TObject);
begin

  edtCaminhoArquivo.Clear;
  FXml.Clear;

end;

procedure TfrmGetNode.btnProcessarNodeClick(Sender: TObject);
begin

  case rgXML.ItemIndex of
    0: memoRetorno.Lines := GetNodePos(FXml.Text, Trim(edtNode.Text));
    1: memoRetorno.Lines := GetNodePos('(ns[0-9]{1,}\:)|(\:ns[0-9]{1,})', memoEntrada.Text, Trim(edtNode.Text));
  end;

  edtCaminhoArquivo.Clear;

end;

procedure TfrmGetNode.FormCreate(Sender: TObject);
begin

  FXml := TStringList.Create;

end;

procedure TfrmGetNode.FormDestroy(Sender: TObject);
begin

  FreeAndNil(FXml);

end;

procedure TfrmGetNode.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if Key = VK_F9 then
    btnProcessarNode.Click;

  if Key = VK_F10 then
    memoRetorno.Clear;

end;

function TfrmGetNode.GetNodePos(AExpressaoRegular, XML, Strtag: String;
  AExpressaoRegFlag: TRegExOptions; AUtf8ToAnsi: Boolean): TStringList;
var
  ExpressaoRegular: TRegex;
begin

  ExpressaoRegular.Create(AExpressaoRegular, AExpressaoRegFlag);

  XML := ExpressaoRegular.Replace(XML, EmptyStr);

  Result := GetNodePos(XML, Strtag, AUtf8ToAnsi);

end;

function TfrmGetNode.GetTagPos(XML, Strtag: String; AMantemCaseDoResult,
  AUtf8ToAnsi: Boolean): String;
var
  PosIni, PosFim : Integer;
  sText: string;
  XMLOriginal: String;
begin

  PosIni := 0;

  if AMantemCaseDoResult then
    XMLOriginal := XML;

  if AUtf8ToAnsi then
  begin

    XML := AnsiUpperCase(XML);
    Strtag := AnsiUpperCase(Strtag);

  end
  else
  begin

    XML := UpperCase(XML);
    Strtag := UpperCase(Strtag);

  end;

  if Pos('<'+Strtag,XML) > 0 then
  begin
    if Pos('<'+Strtag+' ',XML) > 0 then
      PosIni := Pos('<'+Strtag+' ',XML) + Length(Strtag) - 1;

    if PosIni = 0 then
      PosIni := Pos('<'+Strtag+'>',XML) + Length(Strtag) - 2;
    PosFim := Pos('/' + Strtag +'>',XML);

    if AMantemCaseDoResult then
      sText := Copy(XMLOriginal,PosIni,(PosFim - PosIni))
    else
      sText := Copy(XML,PosIni,(PosFim - PosIni));

    PosIni := Pos('>',sText);
    PosFim := Length(sText);

    sText := Copy(sText,PosIni + 1,(PosFim - PosIni - 1));

    Result := Trim(sText);
  end
  else
    Result := EmptyStr;;

end;

function TfrmGetNode.GetTagPos(AExpressaoRegular, XML, Strtag: String;
  AMantemCaseDoResult: boolean; AExpressaoRegFlag: TRegExOptions;
  AUtf8ToAnsi: Boolean): string;
var
  ExpressaoRegular: TRegex;
begin

  ExpressaoRegular.Create(AExpressaoRegular, AExpressaoRegFlag);

  XML := ExpressaoRegular.Replace(XML, EmptyStr);

  Result := GetTagPos(XML, Strtag, AMantemCaseDoResult, AUtf8ToAnsi);

end;

function TfrmGetNode.GetNodePos(XML, Strtag: String; AUtf8ToAnsi: Boolean = True): TStringList;
var
  sXml, Linha: String;
  Encontrada: Boolean;
  InicioTag, FimTag: Integer;
begin

  Result := TStringList.Create;

  if AUtf8ToAnsi then
  begin

    sXML := UpperCase(Utf8ToAnsi(XML));
    Strtag := UpperCase(Utf8ToAnsi(Strtag));

  end
  else
  begin

    sXML := UpperCase(XML);
    Strtag := UpperCase(Strtag);

  end;

  Encontrada := pos('<'+ Strtag, sXml) > 0;

  while Encontrada do
  begin

    InicioTag := pos('<'+ Strtag, sXML) + Length(Strtag);
    FimTag    := Pos('</' + Strtag + '>', sXML) - Length(Strtag) -1;

    Linha := Copy(sXml, InicioTag, (FimTag - InicioTag));
    FimTag := Pos('</' + Strtag + '>', sXML);

    Delete(sXml, 1, (FimTag + Length(Strtag) + 2));

    Encontrada := pos('<'+ Strtag, sXml) > 0;

    Linha := copy(Linha, pos('>', Linha) + 1, Length(Linha));

    Result.Add(Linha);

    Linha := EmptyStr;

  end;

end;

end.


