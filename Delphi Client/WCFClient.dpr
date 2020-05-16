program WCFClient;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Service in 'Service.pas',
  uWCFRest in '..\..\Common\uWCFRest.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
