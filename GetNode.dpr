program GetNode;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmGetNode};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmGetNode, frmGetNode);
  Application.Run;
end.

