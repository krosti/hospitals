unit SharedClasses;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask;

type

Personas = class
  private
    DNI:longint;
    Apellido:string[25];
    Nombre:string[20];
    FechaNac:string[15];
  public
    constructor crearpersona(d:longint;a,n,f:string);
    // procedure establecerdni (d:longint);
    // procedure establecernombre (n:string);
    // procedure establecerapellido (a:string);
    // procedure establecerfechanac (f:string);
    function obtenerfechanac ():string;
    function obtenerdni ():longint;
    function obtenernombre ():string;
    function obtenerapellido ():string;
end;

// /**
//  * [Empleados Class]
//  * @type {[type]}
//  */
Empleados = class(personas)
  private
    Legajo:integer;
  public
    constructor crearempleado (d:longint;a,n,f:string;l:integer);
//    procedure establecerlegajo (l:integer);
    function obtenerlegajo ():integer;
end;


// /**
//  * [Medicos Class]
//  * @type {[type]}
//  */
Medicos = class(empleados)
  private
    Matricula:integer;
  public
    constructor crearmedico (d:longint;a,n,f:string;l,m:integer);
//    procedure establecermatricula(m:longint);
    function obtenermatricula ():integer;
  end;


// /**
//  * [Enfermeras Class]
//  * @type {[type]}
//  */
Enfermeras = class(empleados)
  private
    Nro:integer;
  public
    constructor crearenfermera (d:longint;a,n,f:string;l,n2:integer);
//    procedure establecernroenf (nro:integer);
    function obtenernroenf ():integer;
end;

Secretarias = class(empleados)
  private
    Nro:integer;
  public
    constructor crearsecretaria (d:longint;a,n,f:string;l,n2:integer);
//    procedure establecernrosec (nro:integer);
    function obtenernrosec ():integer;
end;

Auxiliares = class(empleados)
  private
    Nro:integer;
  public
    constructor crearauxiliar (d:longint;a,n,f:string;l,n2:integer);
//    procedure establecernroaux (nro:integer);
    function obtenernroaux ():integer;
end;

Salas = class
  private
    Nro:integer;
    Enfermera:integer;
    Auxiliar:integer;
    Disponible:boolean;
  public
    constructor crearsala (n2,enf,aux:integer);
//    procedure establecerefermera (enf:integer);
//    procedure establecerauxiliar (aux:integer);
//    procedure establecernrosala (nro:integer);
    procedure estalecerestadosala(e:boolean);
    function obtenerenfsala (): integer;
    function obtenerauxsala ():integeR;
    function obtenernrosala ():integer;
    function obtenereestadosala ():boolean; //si es true est� disponible
end;

SInternaciones = class(salas)
  private
    Camas:integer;
    Enfermera2:integer;
    NroOcupadas:integer;
    Tipo:integer;
  public
    constructor crearsinter (nro,enf,enf2,aux,ncamas,t:integer);
//    procedure establecerefermera2 (enf2:integer);
//    procedure establercercamas (camas:integer);
    procedure establecernroocupadas (o:integer);
    function obtenernroocupadas (): integer;
    function obtenerenf2 (): integer;
    function obtenercamas ():integer;
    function obtenertipo ():integer;
end;

Urgencias = class
  private
    Sala:integer;
    Medico:integer;
  public
    constructor crearurgencia (s,m:integer);
//    procedure establecersurgencia (s:integer);
//    procedure establecermedico (m:integer);
    function obtenersurgencia ():integer;
    function obtenermurgencia ():integer;
end;

Consultorios = class
  private
    Nro: integer;
    Especialidad: string[25];
    Medico: integer;
    Secretaria: integer;
  public
    constructor crearconsultorio (n,m,s:integer;e:string);
//    procedure establecernrocons (nro:integer);
//    procedure establecerespecialidad (e:string);
//    procedure establecermedicocons (m:integer);
//   procedure establecersecretariacons (s:integer);
    function obtenernrocons ():integer;
    function obtenerespecialidad ():string;
    function obtenermedicocons ():integer;
    function obtenersecretariacons ():integer;
end;

Horarios = class
  private
    nro:integer;
    consultorio:integer;
  public
    constructor crearhorario (n,c:integer);
//   procedure establecernroturno (n:integer);
//    procedure establecerconshorario (c:integer);
    function obtenernrohorario ():integer;
    function obtenerconshorario ():integer;
 end;

Pedidos = class
  private
    Turno:integer;
    Consultorio:integer;
    Solicitante:longint;
    Fecha:string[25];
  public
    constructor crearpedido (t,c:integer;s:longint;f:string);
//    procedure establecerturnoped (t:integer);
//    procedure establecerconsultorioped (c:integer);
    function obtenerturnoped ():integer;
    function obtenerconsultorioped ():integer;
    function obtenersolicpedido ():longint;
    function obtenerfechapedido ():string;
end;

Pacientes = class(personas)
  private
    Nro: integer;
    Obra:integer;
    Cat:integer;
  public
    constructor crearpaciente (d:longint;n,a,f:string;o,c,n2:integer);
//    procedure establecernropac (nro:integer);
    function obtenernropac ():integer;
    function obtenerobrapac():integer;
    function obtenercatopac():integer;
    function obtenerdnipac():LongInt;
end;

ObraSocial = class
  private
    Nro:integer;
    Nombre:string[15];
  public
    constructor crearobra (n:integer; n2:string);
//    procedure establecernroobra (n:integer);
//    procedure establecernombreobra (n:string);
    function obtenernroobra ():integer;
    function obtenernombreobra ():string;
end;

CatObras = class
  private
    Nro:integer;
    Obra:integer;
    Descripcion:string[10];
    Descuento:integer;
  public
    constructor crearcatobra (n,o,d:integer;d2:string);
    function obteneroscat ():integer;
    function obtenernrocat ():integer;
    function obtenercatobra ():string;
    function obtenerdesccat ():integer;
end;

Internaciones = class
  private
    Nro:integer;
    Paciente:integer;
    Sala:integer;
    FechaI:string[15];
    FechaF:string[15];
    Medico:integer;
    Estado:boolean; //es para saber si est�n pagadas o no
    Activa:boolean; //es para saber si ya pas�, o sea si la fecha de
                    //finalizaci�n ya pas� y el paciente qued� liberado.
    Precio:real;
  public
    constructor crearinternacion (n,p,s,m:integer;fi,ff:string;e,a:boolean);
//    procedure establecernrointer (n:integer);
//    procedure establecerpacinter (p:integer);
//    procedure establecersalainter (s:integer);
//    procedure establecermedicointer (m:integer);
//    procedure establecerfechai (f:string);
    procedure establecerfechaf (f:string);
    procedure estableceractiva (a:boolean);
    function obtenermedicointer ():integer;
    function obtenernrointer ():integer;
    function obtenerpacinter ():integer;
    function obtenersalainter ():integer;
    function obtenerfechai ():string;
    function obtenerfechaf ():string;
    function obteneractiva ():boolean;
    procedure establecerprecio(p:real);virtual;abstract;
    function obtenerprecio():real;
    procedure establecerestado (e:boolean);
    function obtenerestado ():boolean;
end;

InterSalaComunes = class(Internaciones)
  private
    TV:boolean;
  public
    constructor crearintersalacomun (n,p,s,m:integer;fi,ff:string;t,e,a:boolean);
//    procedure establecertv (t:boolean);
    function obtenertv ():boolean;
    procedure establecerprecio(p:real);override;
end;

InterComunes = class(Internaciones)
  private
    Ac1:integer;
    Ac2:integer;
  public
    constructor crearintercomun (n,p,s,m,a1,a2:integer;fi,ff:string;e,a:boolean);
//    procedure establecera1 (a:integer);
//    procedure establecera2 (a:integer);
    function obtenera1 ():integer;
    function obtenera2 ():integer;
    procedure establecerprecio(p:real);override;
end;

InterTerapias = class(Internaciones)
  private
    Tipo:boolean;  //si fueran mas habria que hacer una clase aparte
  public           //ac� dejo true intermedia false intensiva
    constructor crearinterterapia (n,p,s,med:integer;fi,ff:string;e,t,a:boolean);
//    procedure establecermat (m:boolean);
  function obtenertipointerterapia ():boolean;
  procedure establecerprecio(p:real);override;
end;

//No hago una clase de tipos de terapia porque al ser solamente 2
// le asigno 'true' a las Intermedia y 'false' a las Intensivas.

Pagos = class
  private
    Nro:integer;
    Inter:integer;
    Precio:real;
    Tipo:boolean; {'true' efectivo 'false' tarjeta}
  public
    constructor crearpago (n,i:integer;p:real;t:boolean);
//    procedure establecernropago (n:integer);
//    procedure establecerinterpago (i:integer);
//    procedure establecerprecio (p:real);
//    procedure establecertipopago (t:boolean);
    function obtenernropago ():integer;
    function obtenerinterpago ():integer;
    function obtenerprecio ():real;
    function obtenertipopago ():boolean;
end;

function digitos(cad:string):boolean;
function fecha(fa,ff:string):boolean;

implementation

//PERSONAS --------------------------------------------------
constructor Personas.crearpersona(d:longint;a,n,f:string);
begin
  inherited create;
    nombre:=n;
    dni:=d;
    apellido:=a;
    Fechanac:=f;
end;

function Personas.obtenerfechanac ():string;
begin
  obtenerfechanac:=fechanac;
end;

function Personas.obtenerdni ():longint;
begin
  obtenerdni:=dni;
end;

function Personas.obtenernombre ():string;
begin
  obtenernombre:=nombre;
end;

function Personas.obtenerapellido ():string;
begin
  obtenerapellido:=apellido;
end;
//FIN PERSONAS----------------------------------


//EMPLEADOS-------------------------------------
constructor Empleados.crearempleado (d:longint;a,n,f:string;l:integer);
begin
  inherited crearpersona(d,a,n,f);
  legajo:=l;
end;

function Empleados.obtenerlegajo():integer;
begin
  obtenerlegajo:=legajo;
end;
//FIN EMPLEADOS---------------------------------

//MEDICOS----------------------------------------------------
constructor Medicos.crearmedico (d:longint;a,n,f:string;l,m:integer);
begin
  inherited crearempleado(d,a,n,f,l);
  matricula:=m;
end;

function Medicos.obtenermatricula ():integer;
begin
  obtenermatricula:=matricula;
end;
//FIN MEDICOS------------------------------------------

//ENFERMERAS-----------------------------------------------
constructor Enfermeras.crearenfermera (d:longint;a,n,f:string;l,n2:integer);
begin
  inherited crearempleado(d,a,n,f,l);
  nro:=n2;
end;

function Enfermeras.obtenernroenf ():integer;
begin
  obtenernroenf:=nro;
end;
//FIN ENFERMERAS----------------------------

//SECRETARIAS--------------------------------------------
constructor Secretarias.crearsecretaria (d:longint;a,n,f:string;l,n2:integer);
begin
  inherited crearempleado(d,a,n,f,l);
  nro:=n2;
end;

function Secretarias.obtenernrosec ():integer;
begin
  obtenernrosec:=nro;
end;
//FIN SECRETARIAS-----------------------------------

//AUXILIARES----------------------------------------------
constructor Auxiliares.crearauxiliar (d:longint;a,n,f:string;l,n2:integer);
begin
  inherited crearempleado(d,a,n,f,l);
  nro:=n2;
end;

function Auxiliares.obtenernroaux ():integer;
begin
  obtenernroaux:=nro;
end;
//FIN AUXILIARES -----------------------------------------

//SALAS----------------------------------------------------
constructor Salas.crearsala (n2,enf,aux:integer);
begin
  inherited create;
  nro:=n2;
  enfermera:=enf;
  auxiliar:=aux;
  Disponible:=true;
end;

procedure Salas.estalecerestadosala(e:boolean);
begin
  Disponible:=e;
end;


function Salas.obtenerenfsala (): integer;
begin
  obtenerenfsala:=enfermera;
end;

function Salas.obtenerauxsala ():integeR;
begin
  obtenerauxsala:=auxiliar;
end;

function Salas.obtenernrosala ():integer;
begin
  obtenernrosala:=nro;
end;

function Salas.obtenereestadosala ():boolean;
begin
  obtenereestadosala:=disponible;
end;
//FIN SALAS------------------------------------------

//SALAS INTERNACION------------------------------------------
constructor SInternaciones.crearsinter (nro,enf,enf2,aux,ncamas,t:integer);
begin
  inherited crearsala(nro,enf,aux);
  enfermera2:=enf2;
  Nroocupadas:=0;
  Camas:=ncamas;
  Tipo:=t;
end;

procedure SInternaciones.establecernroocupadas (o:integer);
begin
  Nroocupadas:=o;
end;

function SInternaciones.obtenernroocupadas (): integer;
begin
  obtenernroocupadas:=NroOcupadas;
end;

function SInternaciones.obtenerenf2 (): integer;
begin
  obtenerenf2:=Enfermera2;
end;

function SInternaciones.obtenercamas ():integer;
begin
  obtenercamas:=Camas;
end;

function SInternaciones.obtenertipo ():integer;
begin
  obtenertipo:=tipo;
end;
//FIN SALAS INTERNACION --------------------------------------

//URGENCIAS----------------------------------------------------------
constructor Urgencias.crearurgencia (s,m:integer);
begin
  inherited create;
  sala:=s;
  medico:=m;
end;

function Urgencias.obtenersurgencia ():integer;
begin
  obtenersurgencia:=sala;
end;

function Urgencias.obtenermurgencia ():integer;
begin
  obtenermurgencia:=Medico;
end;

//FIN URGENCIAS--------------------------------------------------

//CONSULTORIOS------------------------------------------------------
constructor Consultorios.crearconsultorio (n,m,s:integer;e:string);
begin
  inherited create;
  nro:=n;
  medico:=m;
  secretaria:=s;
  especialidad:=e;
end;

function Consultorios.obtenernrocons ():integer;
begin
  obtenernrocons:=nro;
end;

function Consultorios.obtenerespecialidad ():string;
begin
  obtenerespecialidad:=especialidad;
end;

function Consultorios.obtenermedicocons ():integer;
begin
  obtenermedicocons:=medico;
end;

function Consultorios.obtenersecretariacons ():integer;
begin
  obtenersecretariacons:=secretaria;
end;
//FIN CONSULTORIOS----------------------------------

//HORARIOS-------------------------------------------------
constructor Horarios.crearhorario (n,c:integer);
begin
  inherited create;
  nro:=n;
  consultorio:=c;
end;

function Horarios.obtenernrohorario ():integer;
begin
  obtenernrohorario:=nro;
end;

function Horarios.obtenerconshorario ():integer;
begin
  obtenerconshorario:=consultorio;
end;

//FIN HORARIOS-------------------------------------------------------

//PEDIDOS-------------------------------------------
constructor Pedidos.crearpedido (t,c:integer;s:longint;f:string);
begin
  inherited create;
  turno:=t;
  consultorio:=c;
  solicitante:=s;
  fecha:=f;
end;

function Pedidos.obtenerturnoped ():integer;
begin
  obtenerturnoped:=turno;
end;

function Pedidos.obtenerconsultorioped ():integer;
begin
  obtenerconsultorioped:=consultorio;
end;

function Pedidos.obtenersolicpedido ():longint;
begin
  obtenersolicpedido:=solicitante;
end;

function Pedidos.obtenerfechapedido ():string;
begin
  obtenerfechapedido:=fecha;
end;
//FIN PEDIDOS----------------------------------------------

//PACIENTES------------------------------------------------
constructor Pacientes.crearpaciente (d:longint;n,a,f:string;o,c,n2:integer);
begin
  inherited crearpersona(d,a,n,f);
  nro:=n2;
  Obra:=o;
  Cat:=c;
  DNI:=d;
end;

function Pacientes.obtenernropac ():integer;
begin
  obtenernropac:=nro;
end;

function Pacientes.obtenerobrapac():integer;
begin
  obtenerobrapac:=obra;
end;

function Pacientes.obtenercatopac():integer;
begin
  obtenercatopac:=cat;
end;
function Pacientes.obtenerdnipac():LongInt;
begin
  obtenerdnipac:=DNI;
end;
//FIN PACIENTES-----------------------------------------------------

//OBRA SOCIAL------------------------------------------------------------
constructor ObraSocial.crearobra (n:integer; n2:string);
begin
  inherited create;
  nro:=n;
  nombre:=n2;
end;

function ObraSocial.obtenernroobra ():integer;
begin

  if nro <> 0 then
    begin
      obtenernroobra := nro;
    end;

end;

function ObraSocial.obtenernombreobra ():string;
begin
  obtenernombreobra:=nombre;
end;
//FIN OBRA SOCIAL----------------------------------------

//CATEGORIAS OBRA SOCIAL------------------------------------------
constructor CatObras.crearcatobra (n,o,d:integer;d2:string);
begin
  inherited create;
    nro:=n;
    obra:=o;
    descuento:=d;
    descripcion:=d2;
end;

function CatObras.obteneroscat ():integer;
begin
  obteneroscat:=obra;
end;

function CatObras.obtenernrocat ():integer;
begin
  obtenernrocat:=nro;
end;

function CatObras.obtenercatobra ():string;
begin
  obtenercatobra:=descripcion
end;

function CatObras.obtenerdesccat ():integer;
begin
  obtenerdesccat:=descuento;
end;
//FIN CATEGORIA OBRA-----------------------------------------------

//INTERNACIONES---------------------------------------------------------
constructor Internaciones.crearinternacion (n,p,s,m:integer;fi,ff:string;e,a:boolean);
begin
  inherited create;
  nro:=n;
  paciente:=p;
  sala:=s;
  fechai:=fi;
  fechaf:=ff;
  estado:=e;
  medico:=m;
  activa:=a;
end;

procedure Internaciones.establecerfechaf (f:string);
begin
  fechaf:=f;
end;

function Internaciones.obtenermedicointer ():integer;
begin
  obtenermedicointer:=medico;
end;

function Internaciones.obtenernrointer ():integer;
begin
  obtenernrointer:=nro;
end;

function Internaciones.obtenerpacinter ():integer;
begin
  obtenerpacinter:=paciente;
end;

function Internaciones.obtenersalainter ():integer;
begin
  obtenersalainter:=sala;
end;

function Internaciones.obtenerfechai ():string;
begin
  obtenerfechai:=fechai;
end;

function Internaciones.obtenerfechaf ():string;
begin
  obtenerfechaf:=fechaf;
end;

procedure Internaciones.estableceractiva(a:boolean);
begin
  activa:=a;
end;

function Internaciones.obteneractiva ():boolean;
begin
  obteneractiva:=activa;
end;

function Internaciones.obtenerprecio ():real;
begin
  obtenerprecio:=precio;
end;

procedure Internaciones.establecerestado (e:boolean);
begin
  estado:=e;
end;
function Internaciones.obtenerestado ():boolean;
begin
  obtenerestado:=estado;
end;
//FIN INTERNACIONES---------------------------------------------------------

//INTERNACIONES SALAS COMUNES (LA DE LA TV)-------------------------------------------------
constructor InterSalaComunes.crearintersalacomun (n,p,s,m:integer;fi,ff:string;t,e,a:boolean);
begin
  inherited crearinternacion (n,p,s,m,fi,ff,e,a);
  tv:=t;
end;

function InterSalaComunes.obtenertv ():boolean;
begin
  obtenertv:=tv;
end;

procedure InterSalacomunes.establecerprecio(p:real);
begin
  If tv then
    begin
      precio:=(strtodate(Fechaf))-(strtodate(Fechai));
      precio:=precio*p;
      precio:=precio-(precio/100*10);
    end
    else
      begin
        precio:=(strtodate(Fechaf))-(strtodate(Fechai));
        precio:=precio*p;
      end;

end;

//FIN INTERNACIONES SALA COMUN (LA DE LA TV)-------------------------------------------------

//INTERNACIONES COMUNES (LA DE LOS ACOMPA�ANTES)------------------------------------
constructor InterComunes.crearintercomun (n,p,s,m,a1,a2:integer;fi,ff:string;e,a:boolean);
begin
  inherited crearinternacion (n,p,s,m,fi,ff,e,a);
  ac1:=a1;
  ac2:=a2;
end;

function InterComunes.obtenera1 ():integer;
begin
  obtenera1:=ac1;
end;

function InterComunes.obtenera2 ():integer;
begin
  obtenera2:=ac2;
end;

procedure InterComunes.establecerprecio(p:real);
begin
  precio:=((strtodate(Fechaf))-(strtodate(Fechai))*p);
end;
//FIN INTERNACIONES COMUNES (LA DE LOS ACOMPA�ANTES)-------------------------------

//INTERNACIONES DE TERAPIA-----------------------------------------------------
constructor InterTerapias.crearinterterapia (n,p,s,med:integer;fi,ff:string;e,t,a:boolean);
begin
  inherited crearinternacion (n,p,s,med,fi,ff,e,a);
  tipo:=t;
end;

function InterTerapias.obtenertipointerterapia ():boolean;
begin
  obtenertipointerterapia:=tipo;
end;

procedure InterTerapias.establecerprecio(p:real);
begin
  precio:=((strtodate(Fechaf))-(strtodate(Fechai)));
  precio:=(precio/100*5);
end;
//FIN INTERNACIONES DE TERAPIA----------------------------------------------

//PAGOS---------------------------------------------------------------------
constructor Pagos.crearpago (n,i:integer;p:real;t:boolean);
begin
  inherited create;
  nro:=n;
  inter:=i;
  precio:=p;
  tipo:=t;
end;

function Pagos.obtenernropago ():integer;
begin
  obtenernropago:=nro;
end;

function Pagos.obtenerinterpago ():integer;
begin
  obtenerinterpago:=inter;
end;

function Pagos.obtenerprecio ():real;
begin
  obtenerprecio:=precio;
end;

function Pagos.obtenertipopago ():boolean;
begin
  obtenertipopago:=tipo;
end;

function digitos(cad:string):boolean;
var
ok:boolean;
dig,i:integer;
nro:char;
begin
If cad<>'' then
begin
	dig:=Length(cad);
	i:=1;
	ok:=true;
	While (i<=dig)and(ok) do
	  begin
	    nro:=cad[i];
	    If (nro<'0')or(nro>'9') then
	      ok:=false;
	    i:=i+1;
	  end;
end
else
	ok:=false;
digitos:=ok;
end;

function fecha(fa,ff:string):boolean;
begin
  fecha:=fa<=ff;
end;

end.
