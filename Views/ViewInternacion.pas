unit ViewInternacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SharedClasses, Unit7, Mask, WebAdapt, WebComp,
  madExceptVcl, jpeg, ExtCtrls, DateUtils;

type
  TFInternacion = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Button2: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Button4: TButton;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    Button6: TButton;
    Label15: TLabel;
    CheckBox1: TCheckBox;
    GroupBox5: TGroupBox;
    ComboBox1: TComboBox;
    Button7: TButton;
    GroupBox6: TGroupBox;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label18: TLabel;
    Button8: TButton;
    Button9: TButton;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    MaskEdit3: TMaskEdit;
    CheckBox2: TCheckBox;
    ComboBox4: TComboBox;
    GroupBox7: TGroupBox;
    Edit2: TEdit;
    Button11: TButton;
    ComboBox5: TComboBox;
    Button5: TButton;
    GroupBox8: TGroupBox;
    Label17: TLabel;
    GroupBox9: TGroupBox;
    Edit1: TEdit;
    Label2: TLabel;
    CheckBox3: TCheckBox;
    lgnfrmdptr1: TLoginFormAdapter;
    mdxcptnhndlr1: TMadExceptionHandler;
    catLabel: TLabel;
    img1: TImage;
    lbl1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInternacion: TFInternacion;

implementation

uses MainProgram;

{$R *.dfm}

procedure TFInternacion.Button1Click(Sender: TObject);

  procedure ActualizarComboOS;
    var
    os:ObraSocial;
    i,nu:integer;
  begin
    i:=1;
    ComboBox2.Clear;
    Repeat
      os:=VObraSocial[i];
      if os <> nil then
        begin
          nu:=os.obtenernroobra;
          ComboBox2.Items.Add(inttostr(nu));
          i:=i+1;
        end

    until i>IOS;
  end;

begin
  GroupBox2.visible:=true;
  ActualizarComboOS;
end;

procedure TFInternacion.Button7Click(Sender: TObject);
begin
If Combobox1.ItemIndex=0 then
  begin
  Groupbox3.Visible:=true;
  Groupbox4.Visible:=false;
  Groupbox1.Visible:=false;
  end
  else
    If Combobox1.ItemIndex=1 then
     begin
      GroupBox4.Visible:=true;
      GroupBox3.Visible:=false;
     end
     else
      begin
        GroupBox4.Visible:=false;
        GroupBox3.Visible:=false;
        GroupBox1.Visible:=false;
      end;
end;

procedure TFInternacion.CheckBox1Click(Sender: TObject);
begin
If CheckBox1.Checked then
  GroupBox1.Visible := true
  else
  GroupBox1.Visible := false;
end;

procedure TFInternacion.Button3Click(Sender: TObject);
begin
FInternacion.hide;
GroupBox2.visible:=false;
Main.show;
end;

procedure TFInternacion.Button5Click(Sender: TObject);
begin
  If (Int=0) then
    Label17.Caption:='1'
   else
    Label17.Caption:=inttostr(Int+1);
end;


procedure TFInternacion.Button6Click(Sender: TObject);
begin
  If (IPac=0) then
    Label18.Caption:='1'
   else
    Label18.Caption:=inttostr(IPac+1);
end;

procedure TFInternacion.Button4Click(Sender: TObject);
var
  paciente:Pacientes;
  n,a,f:string;
  d:longint;
  o,c,n2:integer;
  ok:boolean;

  procedure limpiarCampos();
  begin
    Edit10.Clear;
    Edit11.Clear;
    Edit12.Clear;
    MaskEdit3.Clear;
    ComboBox2.ItemIndex := -1;
    ComboBox3.ItemIndex := -1;
    Label18.Caption := '';
  end;
begin
  //10/13
  //Tomo los datos
  ok:=true;
  n:=Edit10.Text;
  a:=Edit11.Text;
  f:=maskedit3.Text;
  If digitos (edit12.Text) then
    d := strtoint(edit12.text)
    else
      ok:=false;
  If ok then
    begin
      If (Combobox2.ItemIndex=-1)or(Combobox3.ItemIndex=-1) then
        showmessage('Debe elegir Obra Social y Categoria')
      else
      begin
        If Label18.Caption<>'' then
          begin
            n2:=strtoint(Label18.Caption);
            o:=strtoint(Combobox2.Text);
            c:=strtoint(Combobox3.Text);
            //Creo el paciente
            paciente:=Pacientes.crearpaciente(d,n,a,f,o,c,n2);
            //Incremento el indice
            IPac:=IPac+1;
            //Guardo
            VPacientes[IPac]:=paciente;
            showmessage('Paciente registrado');
            limpiarCampos();
          end
        else
          showmessage('Debe generar el Nro. de paciente')
      end;
    end
    else
      showmessage('DNI invalido');
end;

procedure TFInternacion.Button8Click(Sender: TObject);
var
  os:ObraSocial;
  i,nu:integer;
begin
  i:=1;
  ComboBox2.Clear;
  Repeat
    os:=VObraSocial[i];
    nu:=os.obtenernroobra;
    ComboBox2.Items.Add(inttostr(nu));
    i:=i+1;
  until i>IOS;
end;

procedure TFInternacion.Button9Click(Sender: TObject);
var
  cat:CatObras;
  i,n,o,obra:integer;
begin
  i:=1;
  Combobox3.Clear;
  If Combobox2.Text<>'' then
  begin
    obra:=strtoint(Combobox2.Text);
    Repeat
      cat:=VCatObras[i];
      o:=cat.obteneroscat;
      If (o=obra) then
      begin
        n:=cat.obtenernrocat;
        Combobox3.Items.Add(inttostr(n));
      end;
      i:=i+1;
    until i>ICO;
  end
  else
    showmessage('Seleccione Obra Social primero');
end;

procedure TFInternacion.Button10Click(Sender: TObject);
var
  med:Medicos;
  i,m:integer;
begin
  i:=1;
  While (IMed>=1) and (i<=IMed) do
    begin
      med:=VMedicos[i];
      m:=med.obtenermatricula;
      ComboBox4.Items.Add(inttostr(m));
      i:=i+1;
    end;
end;

procedure TFInternacion.Button2Click(Sender: TObject);
var
  ni,np,med,s,i:integer;
  fi,ff:string;
  e,ok:boolean;

//Subproceso que administra las internaciones en habitaciones de una cama
procedure internacionsalacomun(e:boolean;ni,np,med:integer;fi,ff:string);
var
  Inco:InterSalaComunes;
  tv:boolean;

  {
    hayTipoDeSala()
    @description mira si hay salas de este tipo disponibles
    @params i : integer - tipo de sala 
    @return boolean
  }
  function hayTipoDeSala(var i:integer):boolean;
  var
    Inco:Salas;
    est:boolean;
  begin
    i:=1;
    est:=false;
    While (i<=Isa)and(not est) do
      begin
        Inco:=VSalas[i];
        est:=Inco.obtenereestadosala;
        i:=i+1;
      end;
    If est then
        begin
          i:=i-1;
          VSalas[i].estalecerestadosala(false);
        end;
    hayTipoDeSala:=est;
  end;

begin
  tv:=CheckBox2.Checked;
  // Invoca el procedimiento que le dice si hay salas disponibles y
  // en que nro de sala se ubicar� la internaci�n
  If hayTipoDeSala(s) then
    begin
      Inco:=InterSalaComunes.crearintersalacomun(ni,np,s,med,fi,ff,tv,e,true);
      Inco.establecerprecio(PSC);
      IIsc:=IIsc+1;
      VInterSalaComunes[IIsc]:=Inco;
      Int:=Int+1;
      showmessage('Internaci�n registrada con �xito');
    end
    else
    begin
     showmessage('No hay salas comunes disponibles');
    end;
end;

procedure internacioncomun(var e:boolean;var ni,np,med:integer;var fi,ff:string);
var
  IntC:InterComunes;
  dni1,dni2:longint;
  na1,na2,aa1,aa2:string[20];
  ok:boolean;
  s:integer;
  aco1,aco2:Personas;

  {
    haySalasDisponibles()
    @description mira si hay salas disponibles
    @param s : integer
    @return boolean
  }
  function haySalasDisponibles(s:integer):boolean;
  var
    SInter:SInternaciones;
    Enc:boolean;
    c,o,t:integer;
  begin
    i:=1;
    enc:=false;
    While (i<=Isi)and(not enc) do
      begin
        SInter:=VSInternaciones[i];
        t:=SInter.obtenertipo;
        If t=0 then
        begin
          c:=SInter.obtenercamas;
          o:=SInter.obtenernroocupadas;
          If o<c then
            enc:=true;
        end;
        i:=i+1;
      end;
    If enc then
        begin
          i:=i-1;
          o:=o+1;
          SInter.establecernroocupadas(o);
          VSInternaciones[i]:=SInter;
        end;
    haySalasDisponibles:=enc;
  end;

begin
  ok:=true;
    // Invoca el procedimiento que le dice si hay salas disponibles y
    // en que nro de sala se ubicar� la internaci�n
    If haySalasDisponibles(s) then
     begin
       If CheckBox1.Checked then
       begin
         If digitos(Edit4.Text) then
           dni1:=strtoint(Edit4.Text)
         else
          ok:=false;
         aa1:=Edit5.Text;
         na1:=Edit6.Text;
         If digitos(Edit9.Text) then
           dni2:=strtoint(Edit9.Text)
         else
           ok:=false;
         aa2:=Edit9.Text;
         na2:=Edit8.Text;
		 If ok then
          begin
			aco1:=Personas.crearpersona(dni1,aa1,na1,'');
			aco2:=Personas.crearpersona(dni2,aa2,na2,'');
			Iper:=Iper+1;
			VPersonas[Iper]:=aco1;
			Iper:=Iper+1;
			VPersonas[Iper]:=aco2;
          end
          else
          begin
			dni1:=0;
			dni2:=0;
		  end;
		end;
	   If ok then
	   begin
    IntC:=InterComunes.crearintercomun(ni,np,s,med,dni1,dni2,fi,ff,e,true);
    IntC.establecerprecio(PSI);
		IIco:=IIco+1;
		VInterComunes[IIco]:=IntC;
		Int:=Int+1;
		showmessage('Internaci�n registrada con �xito');
	   end
	   else
	    showmessage('Hay datos incompatibles');
	 end
     else
      begin
      showmessage('No hay salas de internaci�n com�n disponibles');
      end;
end;

procedure interterapiai(var e:boolean;var ni,np,med:integer;var fi,ff:string);
var
  IntT:InterTerapias;
  ok:boolean;
  s:integer;

  {
    haySalasDisponibles()
    @description Subfuncion que mira si hay salas disponibles
    @param integer:
    @return boolean
  }
  function haySalasDisponibles(var s:integer):boolean;
  var
    SInter:SInternaciones;
    Enc:boolean;
    c,o,t:integer;
  begin
    i:=1;
    enc:=false;
    While (i<=Isi)and(not enc) do
      begin
        SInter:=VSInternaciones[i];
        t:=SInter.obtenertipo;
        If t=2 then
        begin
          c:=SInter.obtenercamas;
          o:=SInter.obtenernroocupadas;
          If o<c then
            enc:=true;
        end;
        i:=i+1;
      end;
    If enc then
        begin
          i:=i-1;
          o:=o+1;
          SInter.establecernroocupadas(o);
          VSInternaciones[i]:=SInter;
        end;
    haySalasDisponibles:=enc;
  end;

begin
    // Invoca el procedimiento que le dice si hay salas disponibles y
    // en que nro de sala se ubicar� la internaci�n
    If haySalasDisponibles(s) then
     begin
       IntT:=InterTerapias.crearinterterapia(ni,np,s,med,fi,ff,e,true,true);
       IntT.establecerprecio(PSI);
       IIte:=IIte+1;
       VInterTerapias[IIte]:=IntT;
       Int:=Int+1;
       showmessage('Internaci�n registrada con �xito');
     end
     else
      begin
      showmessage('No hay salas disponibles para terapia intermedia');
      end;
end;

procedure interterapiaintensiva(e:boolean;ni,np,med:integer;fi,ff:string);
var
  IntT:InterTerapias;
  ok:boolean;
  s:integer;

  //Subfuncion que mira si hay salas disponibles
  function haySalasDisponibles(var s:integer):boolean;
    var
      SInter:SInternaciones;
      Enc:boolean;
      c,o,t:integer;
  begin
    i:=1;
    enc:=false;
    While (i<=Isi)and(not enc) do
      begin
        SInter:=VSInternaciones[i];
        t:=SInter.obtenertipo;
        If t=3 then
        begin
          c:=SInter.obtenercamas;
          o:=SInter.obtenernroocupadas;
          If o<c then
            enc:=true;
        end;
        i:=i+1;
      end;
    If enc then
        begin
          i:=i-1;
          o:=o+1;
          SInter.establecernroocupadas(o);
          VSInternaciones[i]:=SInter;
        end;
    haySalasDisponibles:=enc;
  end;

begin
  // Invoca el procedimiento que le dice si hay salas disponibles y
  // en que nro de sala se ubicar� la internaci�n
  If haySalasDisponibles(s) then
    begin
      IntT:=InterTerapias.crearinterterapia(ni,np,s,med,fi,ff,e,false,true);
      IIte:=IIte+1;
      VInterTerapias[IIte]:=IntT;
      Int:=Int+1;
      showmessage('Internaci�n registrada con �xito');
    end
  else
    begin
      showmessage('No hay salas disponibles para terapia intermedia');
    end;
end;

  function internado(var p:integer):boolean;
  var
    i,nro:integer;enc,a:boolean;
    ISC:InterSalaComunes;
    Ico:InterComunes;
    Ite:InterTerapias;
  begin
    i:=1;enc:=false;
    While (IIsc>0)and(not enc)and(i<=IIsc)do
      begin
        ISC:=VInterSalaComunes[i];
        nro:=ISC.obtenerpacinter;
        If nro=p then
          begin
            a:=ISC.obteneractiva;
            If a then
              enc:=true;
          end;
        i:=i+1;
      end;
    i:=1;
    While (IIco>0)and(not enc)and(i<=IIco)do
      begin
        Ico:=VInterComunes[i];
        nro:=Ico.obtenerpacinter;
        If nro=p then
          begin
            a:=Ico.obteneractiva;
            If a then
              enc:=true;
          end;
        i:=i+1;
      end;
    i:=1;
    While (IIte>0)and(not enc)and(i<=IIte)do
      begin
        Ite:=VInterTerapias[i];
        nro:=Ite.obtenerpacinter;
        If nro=p then
          begin
            a:=Ite.obteneractiva;
            If a then
              enc:=true;
          end;
        i:=i+1;
      end;
    internado:=enc;
  end;

  {
    getNroPaciente()
    @param string
    @return integer
  }
  function getNroPaciente(cad:string):integer;
    var
      i,int:integer;
      c:char;
  begin
    Combobox5.Clear;
    i:=1;
    c:='a';
    int:=0;
    If Length(cad)>0 then
      While c<>'-' do
      begin
        int:=(int*10+strtoint(cad[i]));
        c:=cad[i];
        i:=i+1;
      end;
    // return
    getNroPaciente:=int;
  end;


//PROCEDIMIENTO DE CARGA DE INTERNACIONES
begin
  //Controlo que seleccione un m�dico para la internaci�n
  If Combobox4.ItemIndex<>-1 then
    //Tomo el nro de paciente pero controlo que s�lo sean n�meros
    begin
	    If CheckBox3.Checked then
      begin
		    If ComboBox5.ItemIndex<>-1 then
				  np:=getNroPaciente(Combobox5.Text)
        else
				  showmessage('No se seleccionó paciente');
		  end
		  else begin
				If digitos(edit1.text) then
					np:=strtoint(edit1.text)
					else
						ok:=false;

        //Verifica que ese paciente no est� internado
        If ok then
        begin

          {validar aca si las fechas no vienen vacias}
          If not internado(np) then
            begin
              e:=false;
              ni:=strtoint(Label17.Caption);
              fi:=MaskEdit1.Text;
              ff:=MaskEdit2.Text;
              med:=strtoint(Combobox4.Text);

            {
              0: internacion sala comun
              1: internacion comun
              2: internacion terapia intermedia
              3: internacion terapia intensiva
            }
            If Combobox1.ItemIndex=0 then
              internacionsalacomun(e,ni,np,med,fi,ff)
            else
              If Combobox1.ItemIndex=1 then
                internacioncomun(e,ni,np,med,fi,ff)
              else
                If Combobox1.ItemIndex=2 then
                  interterapiai(e,ni,np,med,fi,ff)
                else
                  If Combobox1.ItemIndex=3 then
                    interterapiaintensiva(e,ni,np,med,fi,ff)
                  else
                    showmessage ('Debe elegir un tipo de Internación');
            end // not internado
          else
            showmessage('El paciente ya se encuentra internado')
        end
        else  // si el paciente NO esta internado
          showmessage ('Nro de paciente inv�lido')
      end;
    end
  else  // no hay medico seleccionado
    showmessage ('Debe elegir un m�dico para la internaci�n');

  // clean labels
  Label17.Caption:='';
  Edit1.Text:='';
  MaskEdit1.Text:='';
  MaskEdit2.Text:='';
end;

procedure TFInternacion.Button11Click(Sender: TObject);
  var
  ap,no:string;
  i,nu:integer;
  pac:Pacientes;
begin
  i:=1;
  While (IPac>0)and(i<=IPac)do
   begin
    pac:=VPacientes[i];
    ap:=pac.obtenerapellido;
    If ap=edit2.text then
      begin
        nu:=pac.obtenernropac;
        no:=pac.obtenernombre;
        Combobox5.Items.Add(inttostr(nu)+'- '+no+' - '+ap);
      end;
    i:=i+1;
   end;
end;

procedure TFInternacion.CheckBox3Click(Sender: TObject);
begin
If CheckBox3.Checked then
  begin
    GroupBox7.Visible:=true;
    GroupBox9.Visible:=false;
  end
  else
  begin
    GroupBox7.Visible:=false;
    GroupBox9.Visible:=true;
  end;
end;

procedure TFInternacion.ComboBox2Change(Sender: TObject);

  procedure ActualizazComboOSCat;
  var
    cat:CatObras;
    i,n,o,obra:integer;
  begin
    i:=1;
    Combobox3.Clear;
    If Combobox2.Text<>'' then
    begin
      obra:=strtoint(Combobox2.Text);
      Repeat
      cat:=VCatObras[i];
      o:=cat.obteneroscat;
      If (o=obra) then
        begin
          n:=cat.obtenernrocat;
          Combobox3.Items.Add(inttostr(n));
        end;
      i:=i+1;
      until i>ICO;
    end
    else
      showmessage('Seleccione Obra Social primero');
  end;

begin
  ActualizazComboOSCat;
end;

procedure TFInternacion.FormShow(Sender: TObject);

     procedure actualizarListaMedicos;
      var
        med:Medicos;
        i,m:integer;
      begin
        i:=1;
        ComboBox4.Clear;
        While (IMed>=1) and (i<=IMed) do
          begin
            med:=VMedicos[i];
            m:=med.obtenermatricula;
            ComboBox4.Items.Add(inttostr(m));
            i:=i+1;
          end;
      end;

begin
  //fecha inicio de internacion
  MaskEdit1.Text:= FormatDateTime('dd/mm/yyyy', Date);
  //fecha finalizacion internacion
  MaskEdit2.Text := FormatDateTime('dd/mm/yyyy', IncDay(Date , 1) );

  actualizarListaMedicos;
end;

end.
