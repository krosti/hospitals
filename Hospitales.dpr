program Hospitales;

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  Forms,
  MainProgram in 'MainProgram.pas',
  SharedClasses in 'Common\SharedClasses.pas',
  Unit4 in 'Unit4.pas' {FConsultorios},
  Unit5 in 'Unit5.pas' {FPaciente},
  Unit6 in 'Unit6.pas' {FConInter},
  Unit7 in 'Unit7.pas' {FDatos},
  Unit8 in 'Unit8.pas' {AsigUrgencias},
  ViewInternacion in 'Views\ViewInternacion.pas' {FInternacion},
  ViewListaPacientes in 'Views\ViewListaPacientes.pas' {FormListaPacientes1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TInicial, Main);
  Application.CreateForm(TFConsultorios, FConsultorios);
  Application.CreateForm(TFPaciente, FPaciente);
  Application.CreateForm(TFConInter, FConInter);
  Application.CreateForm(TFDatos, FDatos);
  Application.CreateForm(TAsigUrgencias, AsigUrgencias);
  Application.CreateForm(TFInternacion, FInternacion);
  Application.CreateForm(TFormListaPacientes1, FormListaPacientes1);
  Application.Run;
end.
