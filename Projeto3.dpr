program Projeto3;

uses
  Vcl.Forms,
  uProjeto3 in 'uProjeto3.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
