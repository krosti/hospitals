unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SharedClasses, Mask, Buttons, madExceptVcl;

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
    ComboOS: TComboBox;
    Label13: TLabel;
    CargaDummyData: TButton;
    helpbtn1: TSpeedButton;
    mdxcptnhndlr1: TMadExceptionHandler;
    listaEnfermeras1: TComboBox;
    listaEnfermeras2: TComboBox;
    listaEnfermeras3: TComboBox;
    listaAuxiliares1: TComboBox;
    listaAuxiliares2: TComboBox;
    listaMedicos1: TComboBox;
    listaSecreatias1: TComboBox;
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
    procedure MaskEdit5Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CargaDummyDataClick(Sender: TObject);
    procedure mdxcptnhndlr1Exception(const exceptIntf: IMEException;
      var handled: Boolean);

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

// Vectors
// Where data will persist:
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
// Vectors indexes
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

// New Medico

procedure TFDatos.Button5Click(Sender: TObject);
var
  n,a,f:string;
  l,m:integer;
  d:longint;
  med:Medicos;
  ok:boolean;

   procedure ActualizarComboMedicos;
    var
      md:Medicos;
      i,nu:integer;
    begin
      i:=1;
      listaMedicos1.Clear;
      Repeat
        md:=VMedicos[i];
        nu:=md.obtenermatricula;
        listaMedicos1.Items.Add(inttostr(nu));
        i:=i+1;
      until i>IMed;
    end;
begin
  // Tomo los valores de los edit
  ok:=true;
  n:=edit16.text;
  a:=edit17.text;

  if digitos(edit18.text) then
    d:=strtoint(edit18.text)
    else
      ok:=false;
  f:=Maskedit1.text;

  if digitos(edit20.text) then
    l:=strtoint(edit20.text)
    else
      ok:=false;

  if digitos(edit21.text) then
    m:=strtoint(edit21.text)
    else
      ok:=false;
  if ok then
    begin
      // Incremento el indice
      IMed:=IMed+1;
      // Creo el nuevo objeto a insertar
      Med:=Medicos.crearmedico(d,a,n,f,l,m);
      // Almaceno en el vector el objeto creado
      VMedicos[IMed]:=Med;
      ActualizarComboMedicos;
      showmessage('Carga correcta');
    end
  else
    showmessage('Hay datos incorrectos');

  // Edits are cleaned
  Edit16.Text:='';
  Edit17.Text:='';
  Edit18.Text:='';
  Edit20.Text:='';
  Edit21.Text:='';
  MaskEdit1.Text:='';
end;

// New Consultorio

procedure TFDatos.Button10Click(Sender: TObject);
var
  n,m,s:integer;
  e:string[20];
  Cons:Consultorios;
  ok:boolean;
begin
  // get data from Edits
  if digitos(edit46.text) then
    n:=strtoint(edit46.text)
  else
      ok:=false;

  e:=edit47.text;

  if listaMedicos1.ItemIndex <> -1 then
    m:=strtoint(listaMedicos1.text)
  else
      ok:=false;

  if listaSecreatias1.ItemIndex <> -1 then
    s:=strtoint(listaMedicos1.Text)
  else
    ok:=false;

  if ok then
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

// New Horario

procedure TFDatos.Button12Click(Sender: TObject);
var
  n,c:integer;
  Horario:Horarios;
  ok:boolean;
begin
// Recupero los dato de los edit
  if digitos(edit50.text) then
    n:=strtoint(edit50.text)
  else
    ok:=false;

  if digitos(edit50.text) then
    c:=strtoint(edit51.text)
  else
    ok:=false;

  if ok then
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

// New Obra Social

procedure TFDatos.Button9Click(Sender: TObject);
var
  os:ObraSocial;
  nu:integer;
  no:string[15];
  ok:boolean;

  procedure ActualizarComboOS;
    var
      os:ObraSocial;
      i,nu:integer;
    begin
      i:=1;
      ComboOS.Clear;
      Repeat
        os:=VObraSocial[i];
        nu:=os.obtenernroobra;
        ComboOS.Items.Add(inttostr(nu));
        i:=i+1;
      until i>IOS;
    end;

begin
  ok:=true;
  
  //Almacena los datos
  if digitos(Edit40.Text)then
    nu:=strtoint(Edit40.Text)
  else
    ok:=false;

  no:=Edit41.Text;

  if ok then
    begin
      os:=ObraSocial.crearobra(nu,no);
      //Incrementa el indice
      IOS:=IOS+1;
      //Carga en vector
      VObraSocial[IOS]:=os;
      ActualizarComboOS;

      showmessage('Carga correcta');
    end
    else
      showmessage('Hay datos incorrectos');

  Edit40.Text:='';
  Edit41.Text:='';
end;

// New Categoria Obra social

procedure TFDatos.Button11Click(Sender: TObject);
var
  Cato:CatObras;
  n,o,d:integer;
  desc:string[15];
  ok:boolean;
begin
  ok := true;
  //Almacena los datos
              //id
  if digitos(edit42.text) then
    n:=strtoint(edit42.text)
  else
    ok:=false;

  //showmessage(edit42.text);
              //os
  //if digitos(edit44.text) then
  if (ComboOS.ItemIndex <> -1) then
    o:=strtoint(ComboOS.Text)
  else
    ok:=false;

  //showmessage(ComboOS.Text);
  desc:=edit43.text;

  if digitos(edit45.text) then
    d:=strtoint(edit45.text)
  else
    ok:=false;

  //showmessage(edit45.text);

  if ok then
    begin
      cato:=CatObras.crearcatobra(n,o,d,desc);
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
  //ComboOS.Clear;
  Edit45.Text:='';
end;

// New Sala

procedure TFDatos.Button1Click(Sender: TObject);
var
  Sala:Salas;
  n,e,a:integer;
  ok:boolean;
begin
  ok:=true;
  if digitos(edit1.text) then
    n:=strtoint(edit1.text)
  else
    ok:=false;

  // enfermera nro
  if listaEnfermeras3.ItemIndex <> -1 then
    e:=strtoint(listaEnfermeras3.text)
  else
    ok:=false;

  // aux nro
  if listaAuxiliares1.ItemIndex <> -1 then
    a:=strtoint(listaAuxiliares1.text)
  else
    ok:=false;

  if ok then
    begin
      //Creo el objeto
      sala:=salas.crearsala(n,e,a);
      //Incremento indice
      Isa:=Isa+1;
      VSalas[Isa]:=sala;
      showmessage ('Sala cargada')
    end
    else
      showmessage('Hay datos invalidos');

  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
end;

// New Enfermera

procedure TFDatos.Button6Click(Sender: TObject);
var
  n,a,f:string;
  l,nro:integer;
  d:longint;
  enf:Enfermeras;
  ok:boolean;

  procedure ActualizarEnfermeras;
    var
      en:Enfermeras;
      i,nu:integer;
    begin
      i:=1;
      listaEnfermeras3.Clear;
      listaEnfermeras2.Clear;
      listaEnfermeras1.Clear;
      Repeat
        en:=VEnfermeras[i];
        nu:=en.obtenernroenf;
        listaEnfermeras3.Items.Add(inttostr(nu));
        listaEnfermeras2.Items.Add(inttostr(nu));
        listaEnfermeras1.Items.Add(inttostr(nu));
        i:=i+1;
      until i>IEnf;
    end;

begin
  // Tomo los valores de los edit
  ok:=true;
  n:=edit16.text;
  a:=edit17.text;

  if digitos(edit25.text) then
    d:=strtoint(edit25.text)
  else
    ok:=false;

  f:=Maskedit1.text;

  if digitos(edit26.text) then
    l:=strtoint(edit26.text)
  else
    ok:=false;

  if digitos(edit27.text) then
    nro:=strtoint(edit27.text)
  else
    ok:=false;

  if ok then
    begin
      // Incremento el indice
      IEnf:=IEnf+1;
      // Creo el nuevo objeto a insertar
      Enf:=Enfermeras.crearenfermera(d,a,n,f,l,nro);
      // Almaceno en el vector el objeto creado
      VEnfermeras[IEnf]:=Enf;
      ActualizarEnfermeras;
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


// New Auxiliar

procedure TFDatos.Button7Click(Sender: TObject);
var
  n,a,f:string;
  l,nro:integer;
  d:longint;
  aux:Auxiliares;
  ok:boolean;

  procedure ActualizarComboAuxiliares;
    var
      au:Auxiliares;
      i,nu:integer;
    begin
      i:=1;
      listaAuxiliares1.Clear;
      listaAuxiliares2.Clear;
      Repeat
        au:=VAuxiliares[i];
        nu:=au.obtenernroaux;
        listaAuxiliares1.Items.Add(inttostr(nu));
        listaAuxiliares2.Items.Add(inttostr(nu));
        i:=i+1;
      until i>IAux;
    end;

begin
  // Tomo los valores de los edit
  ok:=true;
  n:=edit33.text;
  a:=edit32.text;

  if digitos(edit31.text) then
    d:=strtoint(edit31.text)
  else
    ok:=false;

  f:=Maskedit1.text;

  if digitos(edit29.text) then
    l:=strtoint(edit29.text)
  else
    ok:=false;

  if digitos(edit28.text) then
    nro:=strtoint(edit28.text)
  else
    ok:=false;

  if ok then
    begin
      // Incremento el indice
      IAux:=IAux+1;
      // Creo el nuevo objeto a insertar
      Aux:=Auxiliares.crearauxiliar(d,a,n,f,l,nro);
      // Almaceno en el vector el objeto creado
      VAuxiliares[IAux]:=Aux;
      ActualizarComboAuxiliares;
      showmessage('Carga correcta');
    end
    else
      showmessage('Hay datos incorrectos');

  Edit28.Text:='';
  Edit29.Text:='';
  Edit31.Text:='';
  Edit32.Text:='';
  Edit33.Text:='';
  MaskEdit3.Text:='';
end;

// New Secreataria

procedure TFDatos.Button8Click(Sender: TObject);
var
  n,a,f:string;
  l,nro:integer;
  d:longint;
  sec:Secretarias;
  ok:boolean;

  procedure ActualizarComboSecretarias;
    var
      sec:Secretarias;
      i,nu:integer;
    begin
      i:=1;
      listaSecreatias1.Clear;

      Repeat
        sec:=VSecretarias[i];
        nu:=sec.obtenernrosec;
        listaSecreatias1.Items.Add(inttostr(nu));
        i:=i+1;
      until i>ISec;
    end;
begin
  // Tomo los valores de los edit
  ok:=true;
  n:=edit39.text;
  a:=edit38.text;

  if digitos(edit37.text) then
    d:=strtoint(edit37.text)
  else
    ok:=false;

  f:=Maskedit1.text;

  if digitos(edit35.text) then
    l:=strtoint(edit35.text)
  else
    ok:=false;

  if digitos(edit34.text) then
    nro:=strtoint(edit34.text)
  else
    ok:=false;

  if ok then
    begin
      // Incremento el indice
      ISec:=ISec+1;
      // Creo el nuevo objeto a insertar
      Sec:=Secretarias.crearsecretaria(d,a,n,f,l,nro);
      // Almaceno en el vector el objeto creado
      Vsecretarias[ISec]:=Sec;
      ActualizarComboSecretarias;
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


// New Internacion

procedure TFDatos.Button2Click(Sender: TObject);
var
  Sint:SInternaciones;
  nro,e1,e2,aux,camas,tipo:integer;
  ok:boolean;
begin
  ok:=true;

  if digitos(edit4.text) then
    nro:=strtoint(edit4.text)
  else
    ok:=false;

  if listaEnfermeras1.ItemIndex <> -1 then
    e1:=strtoint(listaEnfermeras1.text)
  else
    ok:=false;

  if listaEnfermeras2.ItemIndex <> -1 then
    e2:=strtoint(listaEnfermeras2.text)
  else
    ok:=false;

  if listaAuxiliares2.ItemIndex <> -1 then
    aux:=strtoint(listaAuxiliares2.text)
  else
    ok:=false;

  if digitos(edit19.text) then
    camas:=strtoint(edit19.text)
  else
    ok:=false;

  if Combobox1.ItemIndex=0 then
    tipo:=0
    else
      if Combobox1.ItemIndex=1 then
        tipo:=1
      else
        tipo:=2;

  if ok then
    // miro que no sean las mismas enfermeras
    if (listaEnfermeras1.text)<>(listaEnfermeras2.Text) then
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
  if (digitos(edit8.Text)) and (digitos(edit9.text))then
  begin
    PSC:=strtofloat(edit8.text);
    PSI:=strtofloat(edit9.text);

    Edit8.Enabled := false;
    Edit8.Color := clHighlight;
    Edit9.Enabled := false;
    Edit9.Color := clHighlight;

    showmessage('Precios establecidos');
  end
  else
    showmessage ('Datos invalidos');
end;

procedure TFDatos.MaskEdit5Change(Sender: TObject);
begin
  if MaskEdit5.GetTextLen >= 0 then
    begin
      Button3.Enabled := true;
    end;
end;

procedure TFDatos.FormCreate(Sender: TObject);
begin
  FActual := DateToStr(Date);
  FechaActualLABEL.Caption := FActual;
  //ActualizarCombos();
end;



procedure TFDatos.CargaDummyDataClick(Sender: TObject);

var randomString: Integer;

begin

  randomString:= Random(1000);

  // Medicos
  Edit16.Text := 'Nombre0' + IntToStr(randomString);
  Edit17.Text := 'Apellido0' + IntToStr(randomString);
  Edit18.Text := '12322' + IntToStr(randomString);
  MaskEdit1.Text := '10/10/1958';
  Edit20.Text := '00' + IntToStr(randomString);
  Edit21.Text := '00' + IntToStr(randomString);

  // Enfermeras
  Edit22.Text := 'Enf0' + IntToStr(randomString);
  Edit23.Text := 'EnfApellido0' + IntToStr(randomString);
  Edit25.Text := '12322' + IntToStr(randomString);
  MaskEdit2.Text := '10/10/1958';
  Edit26.Text := '00' + IntToStr(randomString);
  Edit27.Text := '00' + IntToStr(randomString);

  // Auxiliares
  Edit33.Text := 'Enf0' + IntToStr(randomString);
  Edit32.Text := 'EnfApellido0' + IntToStr(randomString);
  Edit31.Text := '12322' + IntToStr(randomString);
  MaskEdit3.Text := '10/10/1958';
  Edit29.Text := '00' + IntToStr(randomString);
  Edit28.Text := '00' + IntToStr(randomString);

  // Secretarias
  Edit39.Text := 'Enf0' + IntToStr(randomString);
  Edit38.Text := 'EnfApellido0' + IntToStr(randomString);
  Edit37.Text := '12322' + IntToStr(randomString);
  MaskEdit4.Text := '10/10/1958';
  Edit35.Text := '00' + IntToStr(randomString);
  Edit34.Text := '00' + IntToStr(randomString);

  // Obras Sociales
  Edit40.Text := '001' + IntToStr(randomString);
  Edit41.Text := 'obra social ' + IntToStr(randomString);
  // Categorias Obras Sociales
  Edit42.Text := '001' + IntToStr(randomString);
  Edit43.Text := 'plan 1' + IntToStr(randomString);
  Edit45.Text := '10';

  // Salas Comunes
  Edit1.Text := '001' + IntToStr(randomString);
  Edit2.Text := '00' + IntToStr(randomString);
  Edit3.Text := '00' + IntToStr(randomString);

  // Salas Internacion
  Edit4.Text := '001' + IntToStr(randomString);
  
end;

procedure TFDatos.mdxcptnhndlr1Exception(const exceptIntf: IMEException;
  var handled: Boolean);
begin
  if(handled = true) then
  begin
    ShowMessage('error!');
  end;
end;

end.
