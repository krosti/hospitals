program Hospitales;

uses
  Forms,
  MainProgram in 'MainProgram.pas' {Main},
  SharedClasses in 'Common/SharedClasses.pas',
  Unit3 in 'Unit3.pas' {FInternacion},
  Unit4 in 'Unit4.pas' {FConsultorios},
  Unit5 in 'Unit5.pas' {FPaciente},
  Unit6 in 'Unit6.pas' {FConInter},
  Unit7 in 'Unit7.pas' {FDatos},
  Unit8 in 'Unit8.pas' {AsigUrgencias};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TInicial, Main);
  Application.CreateForm(TFInternacion, FInternacion);
  Application.CreateForm(TFConsultorios, FConsultorios);
  Application.CreateForm(TFPaciente, FPaciente);
  Application.CreateForm(TFConInter, FConInter);
  Application.CreateForm(TFDatos, FDatos);
  Application.CreateForm(TAsigUrgencias, AsigUrgencias);
  Application.Run;
end.
