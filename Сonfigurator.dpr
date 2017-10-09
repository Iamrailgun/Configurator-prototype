program Ñonfigurator;

uses
  Vcl.Forms,
  MainUnit in 'MainUnit.pas' {Form1},
  ViewDbData in 'ViewDbData.pas' {Form2},
  AddDataToDb in 'AddDataToDb.pas' {Form3},
  RemoveDataFromDb in 'RemoveDataFromDb.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
