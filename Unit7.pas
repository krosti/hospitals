unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit2, Mask;

type
  TFDatos = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button2: TButton;
    Edit7: TEdit;
    Label8: TLabel;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Button5: TButton;
    Button6: TButton;
    Label23: TLabel;
    Label24: TLabel;
    Edit22: TEdit;
    Edit23: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Edit25: TEdit;
    Edit26: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    Edit27: TEdit;
    Button7: TButton;
    Label29: TLabel;
    Label30: TLabel;
    Edit28: TEdit;
    Edit29: TEdit;
    Label31: TLabel;
    Label32: TLabel;
    Edit31: TEdit;
    Edit32: TEdit;
    Label33: TLabel;
    Label34: TLabel;
    Edit33: TEdit;
    Button8: TButton;
    Label35: TLabel;
    Label36: TLabel;
    Edit34: TEdit;
    Edit35: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    Edit37: TEdit;
    Label39: TLabel;
    Label40: TLabel;
    Edit39: TEdit;
    GroupBox9: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    Button9: TButton;
    Edit40: TEdit;
    GroupBox10: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Label47: TLabel;
    GroupBox11: TGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Edit46: TEdit;
    Edit47: TEdit;
    Edit48: TEdit;
    Edit49: TEdit;
    Button10: TButton;
    Button11: TButton;
    GroupBox12: TGroupBox;
    Label52: TLabel;
    Button12: TButton;
    Edit50: TEdit;
    Label53: TLabel;
    Button13: TButton;
    Edit51: TEdit;
    Label54: TLabel;
    Edit41: TEdit;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    Edit38: TEdit;
    Label55: TLabel;
    Edit19: TEdit;
    Label9: TLabel;
    ComboBox1: TComboBox;
    GroupBox3: TGroupBox;
    MaskEdit5: TMaskEdit;
    Button3: TButton;
    GroupBox4: TGroupBox;
    Label10: TLabel;
    Edit8: TEdit;
    Label11: TLabel;
    Edit9: TEdit;
    Button4: TButton;
    Label12: TLabel;
    FechaActualLABEL: TLabel;
    procedure Button13Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure MaskEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit5Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

//Defino los vectores con las clases creadas
  VectorPersonas = array [1..15] of Personas;
  VectorMedicos = array [1..15] of Medicos;
  VectorSecretarias = array [1..15] of Secretarias;
  VectorHorarios = array [1..10] of Horarios;
  VectorConsultorios = array [1..15] of Consultorios;
  VectorEnfermeras = array [1..15] of Enfermeras;
  VectorAuxiliares = array [1..15] of Auxiliares;
  VectorSalas = array [1..15] of Salas;
  VectorSInternaciones = array [1..15] of SInternaciones;
  VectorUrgencias = array [1..15] of Urgencias;
  VectorPedidos = array [1..15] of Pedidos;
  VectorPacientes = array [1..15] of Pacientes;
  VectorObraSocial = array [1..15] of ObraSocial;
  VectorCatObras = array [1..15] of CatObras;
  VectorInternaciones = array [1..15] of Internaciones;
  VectorInterSalaComunes = array [1..15] of InterSalaComunes;
  VectorInterComunes = array [1..15] of InterComunes;
  VectorInterTerapias = array [1..15] of InterTerapias;
  VectorPagos = array [1..30] of Pagos;

var
  FDatos: TFDatos;

// Genero los vecotres donde voy a almacenar los datos
  VPersonas: VectorPersonas;
  VMedicos:  VectorMedicos;
  VSecretarias:  VectorSecretarias;
  VHorarios:  VectorHorarios;
  VConsultorios: VectorConsultorios;
  VEnfermeras:  VectorEnfermeras;
  VAuxiliares:  VectorAuxiliares;
  VSalas:  VectorSalas;
  VSInternaciones:  VectorSInternaciones;
  VUrgencias:  VectorUrgencias;
  VPedidos:  VectorPedidos;
  VPacientes:  VectorPacientes;
  VObraSocial:  VectorObraSocial;
  VCatObras:  VectorCatObras;
  VInternaciones:  VectorInternaciones;
  VInterSalaComunes:  VectorInterSalaComunes;
  VInterComunes:  VectorInterComunes;
  VInterTerapias:  VectorInterTerapias;
  VPagos:  VectorPagos;
// Genero las variables que act�an de �ndice en los vectores
  Iper,
  IMed,
  ISec,
  IHor,
  ICns,
  IEnf,
  IAux,
  ISa,
  ISi,
  ISic,
  Iurg,
  IPed,
  IPac,
  IOS,
  ICO,
  IInt,
  IIsc,
  IIco,
  IIte,
  Ipag,
  Int,
  Pac,Nrointer,tipointer:integer;
  FActual:string;
  PSC,PSI:real;


implementation

uses MainProgram;

{$R *.dfm}

procedure TFDatos.Button13Click(Sender: TObject);
begin
FDatos.hide;
Main.show;
end;

procedure TFDatos.Button5Click(Sender: TObject);
var
  n,a,f:string;
  l,m:integer;
  d:longint;
  med:Medicos;
  ok:boolean;
begin
// Tomo los valores de los edit
  ok:=true;
  n:=edit16.text;
  a:=edit17.text;
  If digitos(edit18.text) then
    d:=strtoint(edit18.text)
    else
      ok:=false;
  f:=Maskedit1.text;
  If digitos(edit20.text) then
    l:=strtoint(edit20.text)
    else
      ok:=false;
  If digitos(edit21.text) then
    m:=strtoint(edit21.text)
    else
      ok:=false;
  If ok then
  begin
  // Incremento el indice
  IMed:=IMed+1;
// Creo el nuevo objeto a insertar
  Med:=Medicos.crearmedico(d,a,n,f,l,m);
// Almaceno en el vector el objeto creado
  VMedicos[IMed]:=Med;
  showmessage('Carga correcta');
  end
  else
    showmessage('Hay datos incorrectos');
  Edit16.Text:='';
  Edit17.Text:='';
  Edit18.Text:='';
  Edit20.Text:='';
  Edit21.Text:='';
  MaskEdit1.Text:='';
end;

procedure TFDatos.Button10Click(Sender: TObject);
var
  n,m,s:integer;
  e:string[20];
  Cons:Consultorios;
  ok:boolean;
begin
// Recopilo los datos de los edit
  If digitos(edit46.text) then
  n:=strtoint(edit46.text)
  else
      ok:=false;
  e:=edit47.text;
  If digitos(edit48.text) then
  m:=strtoint(edit48.text)
  else
      ok:=false;
  If digitos(edit49.text) then
  s:=strtoint(edit49.text)
  else
      ok:=false;
  If ok then
  begin
// Incremento el �ndice
  ICns:=ICns+1;
// Creo un nuevo objeto de esta clase
  Cons:=Consultorios.crearconsultorio(n,m,s,e);
  VConsultorios[ICns]:=Cons;
    showmessage('Carga correcta');
  end
  else
    showmessage('Hay datos incorrectos');
  Edit46.Text:='';
  Edit47.Text:='';
  Edit48.Text:='';
  Edit49.Text:='';
end;

procedure TFDatos.Button12Click(Sender: TObject);
var
  n,c:integer;
  Horario:Horarios;
  ok:boolean;
begin
// Recupero los dato de los edit
  If digitos(edit50.text) then
  n:=strtoint(edit50.text)
  else
    ok:=false;
  If digitos(edit50.text) then
  c:=strtoint(edit51.text)
  else
    ok:=false;
  If ok then
  begin
// Incremento el �ndice
  IHor:=IHor+1;
// Creo un nuevo objeto
  Horario:=Horarios.crearhorario(n,c);
// Almaceno
  VHorarios[IHor]:=Horario;
  showmessage('Carga correcta');
  end
  else
    showmessage('Hay datos incorrectos');
  Edit50.Text:='';
  Edit51.Text:='';
end;

procedure TFDatos.Button9Click(Sender: TObject);
var
  os:ObraSocial;
  nu:integer;
  no:string[15];
  ok:boolean;
begin
  //Almacena los datos
  If digitos (edit40.Text)then
  nu:=strtoint(Edit40.text)
  else
    ok:=false;
  no:=Edit41.Text;
  If ok then
  begin
  os:=ObraSocial.crearobra(nu,no);
  //Incrementa el indice
  IOS:=IOS+1;
  //Carga en vector
  VObraSocial[IOS]:=os;
  showmessage('Carga correcta');
  end
  else
    showmessage('Hay datos incorrectos');
  Edit40.Text:='';
  Edit41.Text:='';
end;

procedure TFDatos.Button11Click(Sender: TObject);
var
  Cato:CatObras;
  n,o,d:integer;
  desc:string[15];
  ok:boolean;
begin
  //Almacena los datos
  If digitos(edit42.text) then
  n:=strtoint(edit42.text)
  else
    ok:=false;
  If digitos(edit44.text) then
  o:=strtoint(edit44.text)
  else
    ok:=false;
  desc:=edit43.text;
  If digitos(edit45.text) then
  d:=strtoint(edit45.text)
  else
    ok:=false;
  If ok then
  begin
  cato:=CatObras.crearcarobra(n,o,d,desc);
  //Incrementa el indice
  ICO:=ICO+1;
  //Carga en Vector
  VCatObras[ICO]:=cato;
    showmessage('Carga correcta');
  end
  else
    showmessage('Hay datos incorrectos');
  Edit42.Text:='';
  Edit43.Text:='';
  Edit44.Text:='';
  Edit45.Text:='';
end;

procedure TFDatos.Button1Click(Sender: TObject);
var
  Sala:Salas;
  n,e,a:integer;
  ok:boolean;
begin
  ok:=true;
  If digitos(edit1.text) then
   n:=strtoint(edit1.text)
   else
    ok:=false;
  If digitos(edit2.text) then
   e:=strtoint(edit2.text)
   else
    ok:=false;
  If digitos(edit3.text) then
   a:=strtoint(edit3.text)
   else
    ok:=false;
  If ok then
  begin
  //Creo el objeto
  sala:=salas.crearsala(n,e,a);
  //Incremento indice
  Isa:=Isa+1;
  VSalas[Isa]:=sala;
  showmessage ('Sala cargada')
  end
  else
  showmessage('Hay datos inv�lidos');
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
end;

procedure TFDatos.Button6Click(Sender: TObject);
var
  n,a,f:string;
  l,nro:integer;
  d:longint;
  enf:Enfermeras;
  ok:boolean;
begin
// Tomo los valores de los edit
  ok:=true;
  n:=edit16.text;
  a:=edit17.text;
  If digitos(edit25.text) then
    d:=strtoint(edit25.text)
    else
      ok:=false;
  f:=Maskedit1.text;
  If digitos(edit26.text) then
    l:=strtoint(edit26.text)
    else
      ok:=false;
  If digitos(edit27.text) then
    nro:=strtoint(edit27.text)
    else
      ok:=false;
  If ok then
  begin
  // Incremento el indice
  IEnf:=IEnf+1;
// Creo el nuevo objeto a insertar
  Enf:=Enfermeras.crearenfermera(d,a,n,f,l,nro);
// Almaceno en el vector el objeto creado
  VEnfermeras[IEnf]:=Enf;
  showmessage('Carga correcta');
  end
  else
    showmessage('Hay datos incorrectos');
  Edit22.Text:='';
  Edit23.Text:='';
  Edit25.Text:='';
  Edit26.Text:='';
  Edit27.Text:='';
  MaskEdit2.Text:='';
end;

procedure TFDatos.Button7Click(Sender: TObject);
var
  n,a,f:string;
  l,nro:integer;
  d:longint;
  aux:Auxiliares;
  ok:boolean;
begin
// Tomo los valores de los edit
  ok:=true;
  n:=edit33.text;
  a:=edit32.text;
  If digitos(edit31.text) then
    d:=strtoint(edit31.text)
    else
      ok:=false;
  f:=Maskedit1.text;
  If digitos(edit29.text) then
    l:=strtoint(edit29.text)
    else
      ok:=false;
  If digitos(edit28.text) then
    nro:=strtoint(edit28.text)
    else
      ok:=false;
  If ok then
  begin
  // Incremento el indice
  IAux:=IAux+1;
// Creo el nuevo objeto a insertar
  Aux:=Auxiliares.crearauxiliar(d,a,n,f,l,nro);
// Almaceno en el vector el objeto creado
  VAuxiliares[IAux]:=Aux;
  showmessage('Carga correcta');
  end
  else
    showmessage('Hay datos incorrectos');
  Edit28.Text:='';
  Edit28.Text:='';
  Edit31.Text:='';
  Edit32.Text:='';
  Edit33.Text:='';
  MaskEdit3.Text:='';
end;

procedure TFDatos.Button8Click(Sender: TObject);
var
  n,a,f:string;
  l,nro:integer;
  d:longint;
  sec:Secretarias;
  ok:boolean;
begin
// Tomo los valores de los edit
  ok:=true;
  n:=edit39.text;
  a:=edit38.text;
  If digitos(edit37.text) then
    d:=strtoint(edit37.text)
    else
      ok:=false;
  f:=Maskedit1.text;
  If digitos(edit35.text) then
    l:=strtoint(edit35.text)
    else
      ok:=false;
  If digitos(edit34.text) then
    nro:=strtoint(edit34.text)
    else
      ok:=false;
  If ok then
  begin
  // Incremento el indice
  ISec:=ISec+1;
// Creo el nuevo objeto a insertar
  Sec:=Secretarias.crearsecretaria(d,a,n,f,l,nro);
// Almaceno en el vector el objeto creado
  Vsecretarias[ISec]:=Sec;
  showmessage('Carga correcta');
  end
  else
    showmessage('Hay datos incorrectos');
  Edit34.Text:='';
  Edit35.Text:='';
  Edit37.Text:='';
  Edit38.Text:='';
  Edit39.Text:='';
  MaskEdit4.Text:='';
end;
procedure TFDatos.Button2Click(Sender: TObject);
var
  Sint:SInternaciones;
  nro,e1,e2,aux,camas,tipo:integer;
  ok:boolean;
begin
  ok:=true;
  If digitos(edit4.text) then
   nro:=strtoint(edit4.text)
   else
    ok:=false;
  If digitos(edit5.text) then
   e1:=strtoint(edit5.text)
   else
    ok:=false;
  If digitos(edit7.text) then
   e2:=strtoint(edit7.text)
   else
    ok:=false;
  If digitos(edit6.text) then
   aux:=strtoint(edit6.text)
   else
    ok:=false;
  If digitos(edit19.text) then
   camas:=strtoint(edit19.text)
   else
    ok:=false;
  If Combobox1.ItemIndex=0 then
    tipo:=0
    else
    If Combobox1.ItemIndex=1 then
      tipo:=1
      else
        tipo:=2;
  If ok then
  If (edit5.text)<>(edit7.Text) then
  begin
  //Creo el objeto
  Sint:=SInternaciones.crearsinter(nro,e1,e2,aux,camas,tipo);
  //Incremento indice
  Isi:=Isi+1;
  VSInternaciones[Isi]:=Sint;
  showmessage('Carga correcta');
  end
  else
    showmessage('Hay datos incorrectos');
  Edit4.Text:='';
  Edit5.Text:='';
  Edit6.Text:='';
  Edit7.Text:='';
  Edit19.Text:='';
  Combobox1.Text:='';
end;

procedure TFDatos.Button3Click(Sender: TObject);
begin
FActual:=MaskEdit5.Text;
FechaActualLABEL.Caption := FActual;
showmessage('Fecha Cargada');
MaskEdit5.Text:='';
end;

procedure TFDatos.Button4Click(Sender: TObject);
begin
  If (digitos(edit8.Text)) and (digitos(edit9.text))then
  begin
    PSC:=strtofloat(edit8.text);
    PSI:=strtofloat(edit9.text);
    showmessage('Precios establecidos');
  end
  else
    showmessage ('Datos inv�lidos');
end;
    
procedure TFDatos.MaskEdit5KeyPress(Sender: TObject; var Key: Char);
const
  Backspace = #8;
  AllowKeys: set of Char = ['0'..'9'];

begin


end;

procedure TFDatos.MaskEdit5Change(Sender: TObject);
begin
  if MaskEdit5.GetTextLen >= 0 then
    begin
      Button3.Enabled := true;
    end;
end;

end.