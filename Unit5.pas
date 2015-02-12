unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SharedClasses,Unit7;

type
  TFPaciente = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GroupBox2: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    GroupBox3: TGroupBox;
    ListBox1: TListBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPaciente: TFPaciente;

implementation

uses MainProgram;

{$R *.dfm}

procedure TFPaciente.Button2Click(Sender: TObject);
begin
Main.show;
FPaciente.hide;
end;

procedure TFPaciente.Button1Click(Sender: TObject);
var
  pac:Pacientes;
  nu,os,cat,med,sala,tipo:integer;
  no,ap,fn,fi,ff:string;
  ok,enco:boolean;
  dni:longint;

function encontrado(var dni:longint;var nu,os,cat:integer;var ap,no,fn:string):boolean;
var
nro,i:integer;
p:Pacientes;
enc:boolean;
begin
  i:=1;enc:=false;
  While (IPac>0)and(not enc)and(i<=IPac) do
    begin
      p:=VPacientes[i];
      nro:=p.obtenernropac;
      If nro=nu then
        begin
        no:=p.obtenernombre;
        ap:=p.obtenerapellido;
        fn:=p.obtenerfechanac;
        os:=p.obtenerobrapac;
        cat:=p.obtenercatopac;
        dni:=p.obtenerdni;
        enc:=true;
        end;
      i:=i+1;
    end;
  encontrado:=enc;
end;

function internado(var p,sala,med,tipo:integer;var fi,ff:string):boolean;
var
  i,nro:integer;enc:boolean;
  ISC:InterSalaComunes;
  Ico:InterComunes;
  Ite:InterTerapias;
  t,a:boolean;
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
             begin
              enc:=true;
              med:=ISC.obtenermedicointer;
              sala:=ISC.obtenersalainter;
              tipo:=0;
              fi:=ISC.obtenerfechai;
              ff:=ISC.obtenerfechaf;
             end;
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
             begin
              enc:=true;
              med:=ICO.obtenermedicointer;
              sala:=ICO.obtenersalainter;
              tipo:=0;
              fi:=ICO.obtenerfechai;
              ff:=ICO.obtenerfechaf;
             end;
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
             begin
              enc:=true;
              med:=Ite.obtenermedicointer;
              sala:=Ite.obtenersalainter;
              If t then
                tipo:=2
                else
                tipo:=3;
              fi:=Ite.obtenerfechai;
              ff:=Ite.obtenerfechaf;
             end;
        end;
      i:=i+1;
    end;
  internado:=enc;
end;

procedure historial(var pac:integer);
var
  i,nro:integer;
  ISC:InterSalaComunes;
  Ico:InterComunes;
  Ite:InterTerapias;
  sala,med:integer;
  fi,ff:string[15];
  est,a,tipo:boolean;
begin
  ListBox1.Clear;
  i:=1;
  GroupBox3.Visible:=true;
  Listbox1.Visible:=true;
  ListBox1.Items.Add('Nro. - Tipo - Sala - Médico - FechaInicio - FechaFin - Pagada' );
  While (IIsc>0)and(i<=IIsc)do
    begin
      ISC:=VInterSalaComunes[i];
      nro:=ISC.obtenerpacinter;
      a:=ISC.obteneractiva;
      If (nro=pac)and(not a) then
        begin
          est:=ISC.obtenerestado;
          sala:=ISC.obtenersalainter;
          med:=ISC.obtenermedicointer;
          fi:=ISC.obtenerfechai;
          ff:=ISC.obtenerfechaf;
          If est then
            Listbox1.Items.Add(inttostr(i)+' - Privada - '+inttostr(sala)+' - '+inttostr(med)+' - '+fi+' - '+ff+' - SI')
            else
            Listbox1.Items.Add(inttostr(i)+' - Privada - '+inttostr(sala)+' - '+inttostr(med)+' - '+fi+' - '+ff+' - NO');
        end;
      i:=i+1;
    end;
  i:=1;
  While (IIco>0)and(i<=IIco)do
    begin
      ICO:=VInterComunes[i];
      nro:=ICO.obtenerpacinter;
      a:=ICO.obteneractiva;
      If (nro=pac)and(not a) then
        begin
          est:=ICO.obtenerestado;
          sala:=ICO.obtenersalainter;
          med:=ICO.obtenermedicointer;
          fi:=ICO.obtenerfechai;
          ff:=ICO.obtenerfechaf;
          If est then
            Listbox1.Items.Add(inttostr(i)+' - Int. Común - '+inttostr(sala)+' - '+inttostr(med)+' - '+fi+' - '+ff+' - SI')
            else
            Listbox1.Items.Add(inttostr(i)+' - Int. Común - '+inttostr(sala)+' - '+inttostr(med)+' - '+fi+' - '+ff+' - NO');
        end;
      i:=i+1;
    end;
  i:=1;
  While (IIte>0)and(i<=IIte)do
    begin
      Ite:=VInterTerapias[i];
      nro:=Ite.obtenerpacinter;
      a:=Ite.obteneractiva;
      If (nro=pac)and(not a) then
        begin
          est:=Ite.obtenerestado;
          sala:=Ite.obtenersalainter;
          med:=Ite.obtenermedicointer;
          fi:=Ite.obtenerfechai;
          ff:=Ite.obtenerfechaf;
          tipo:=Ite.obtenertipointerterapia;
          If est then
            If tipo then
              Listbox1.Items.Add(inttostr(i)+' - Ter.Interm. - '+inttostr(sala)+' - '+inttostr(med)+' - '+fi+' - '+ff+' - SI')
              else
              Listbox1.Items.Add(inttostr(i)+' - Ter.Intens. - '+inttostr(sala)+' - '+ inttostr(med)+' - '+fi+' - '+ff+' - SI')
          else
            If tipo then
              Listbox1.Items.Add(inttostr(i)+' - Ter.Interm. - '+inttostr(sala)+' - '+ inttostr(med)+' - '+fi+' - '+ff+' - NO')
              else
              Listbox1.Items.Add(inttostr(i)+' - Ter.Intens. - '+ inttostr(sala)+' - '+ inttostr(med)+' - '+fi+' - '+ff+' - NO');

        end;
      i:=i+1;
    end;
end;


begin
enco:=false;
If digitos(Edit1.Text) then
  begin
    nu:=strtoint(edit1.text);
    If encontrado(dni,nu,os,cat,ap,no,fn) then
     begin
      enco:=true;
      GroupBox2.Visible:=true;
      Label23.Caption:=no;
      Label24.Caption:=ap;
      Label25.Caption:=fn;
      Label17.Caption:=inttostr(os);
      Label18.Caption:=inttostr(cat);
      Label27.Caption:=inttostr(dni);
      If internado(nu,sala,med,tipo,fi,ff) then
        begin
           GroupBox1.Visible:=true;
		       If tipo=0 then
		          Label6.Caption:='Internación Privada'
		        else
		          If tipo=1 then
		            Label6.Caption:='Internacion Comun'
		          else
		            If tipo=2 then
		              Label6.Caption:='Terapia Intermedia'
		                else
		                  Label6.Caption:='Terapia Intensiva';
        end;
	  Label4.Caption:=inttostr(sala);
	  Label8.Caption:=inttostr(med);
	  Label20.Caption:=fi;
	  Label22.Caption:=ff;
	 end
     else
      showmessage('Paciente no encontrado');
  end
  else
    showmessage('Datos no válidos');
  If enco then
    historial(nu);
end;

end.
