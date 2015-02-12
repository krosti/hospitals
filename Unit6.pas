unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SharedClasses,Unit7, Mask;

type
  TFConInter = class(TForm)
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Edit1: TEdit;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Button3: TButton;
    Label1: TLabel;
    GroupBox4: TGroupBox;
    Label6: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    ComboBox1: TComboBox;
    Button4: TButton;
    Label17: TLabel;
    ComboBox2: TComboBox;
    MaskEdit1: TMaskEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConInter: TFConInter;

implementation

uses MainProgram;

{$R *.dfm}

procedure TFConInter.Button1Click(Sender: TObject);
begin
FConInter.hide;
Main.show;
end;

procedure TFConInter.Button5Click(Sender: TObject);
begin
GroupBox4.Visible:=true;
end;

procedure TFConInter.Button2Click(Sender: TObject);
var
  ISC:InterSalaComunes;
  ICOm:InterComunes;
  ITE:InterTerapias;
  i,n,p,s,os,cat,nro,desc:integer;
  fi,ff:string[20];
  enc,a,est:boolean;
  precio:real;

procedure consultaros(var nro,os,cat:integer);
var
  i,n:integer;
  pac:Pacientes;
  enc:boolean;
begin
  i:=1;
  enc:=false;
  While(IPac>0)and(i<=IPac)and(not enc)do
  begin
    pac:=VPacientes[i];
    n:=pac.obtenernropac;
    If n=nro then
      begin
        os:=pac.obtenerobrapac;
        cat:=pac.obtenercatopac;
        enc:=true;
      end;
    i:=i+1;
  end;
end;

function verdescuento (var no,cat:integer):integer;
var
  i,oscat,nrocat,desc:integer;
  caOS:CatObras;
  enc:boolean;
begin
  i:=1;enc:=false;
  While(ICO>0)and(i<=ICO)and(not enc)do
    begin
      caOS:=VCatObras[i];
      oscat:=caOS.obteneroscat;
      nrocat:=caOS.obtenernrocat;
      If (oscat=no)and(nrocat=cat)then
        begin
          enc:=true;
          desc:=caOS.obtenerdesccat;
        end;
      i:=i+1;
    end;
    verdescuento:=desc;
end;


begin
  a:=false;
  i:=1;
  If Combobox2.ItemIndex=0 then
  begin
	    enc:=false;
	    While (IIsc>0)and(i<=IIsc)and(not enc) do
	    begin
	      ISC:=VInterSalaComunes[i];
	      n:=ISC.obtenernrointer;
	      If (n=(strtoint(edit1.Text))) then
	        begin
	          enc:=true;
	        end;
	      i:=i+1;
	    end;
	    If not enc then
	      showmessage('Internación no encontrada')
	      else
	        begin
            nrointer:=i-1;
            tipointer:=0;
	          Label4.Caption:=inttostr(ISC.obtenerpacinter);
	          Label7.Caption:=inttostr(ISC.obtenersalainter);
	          Label10.Caption:=ISC.obtenerfechai;
	          Label11.Caption:=ISC.obtenerfechaf;
	          a:=ISC.obteneractiva;
            est:=ISC.obtenerestado;
	          If a then
              begin
	              GroupBox3.Visible:=true;
                GroupBox4.Visible:=false;
              end
	            else
                GroupBox3.Visible:=false;
            If (not a)and(not est) then //no debe estar activa ni paga para
            //poder ser pagada, porque si está activa aún puede
            //modificarse su fecha de finalización, lo cual haría
            //un cambio en el precio y el pago de esa internación
            //ya está registrado.
              begin
                GroupBox4.Visible:=true;
                precio:=ISC.obtenerprecio;
                nro:=ISC.obtenerpacinter;
                consultaros(nro,os,cat);
                desc:=verdescuento(os,cat);
                Label13.Caption:=floattostr(precio);
                Label15.Caption:=inttostr(desc);
                Label19.Caption:=floattostr(precio-(precio*desc/100))
               end;
            end;
  end
  else
  If Combobox2.ItemIndex=1 then
  begin
	    enc:=false;
	    While (IIco>0)and(i<=IIco)and(not enc) do
	    begin
	      ICOm:=VInterComunes[i];
	      n:=ICOm.obtenernrointer;
	      If (n=(strtoint(edit1.Text))) then
	        begin
	          enc:=true;
	        end;
	      i:=i+1;
	    end;
	    If not enc then
	      showmessage('Internación no encontrada')
	      else
	        begin
            nrointer:=i-1;
            tipointer:=1;
	          Label4.Caption:=inttostr(ICOm.obtenerpacinter);
	          Label7.Caption:=inttostr(ICOm.obtenersalainter);
	          Label10.Caption:=ICOm.obtenerfechai;
	          Label11.Caption:=ICOm.obtenerfechaf;
	          a:=ICOm.obteneractiva;
	          If a then
	            GroupBox3.Visible:=true
	            else
	            GroupBox3.Visible:=false;
            If not a then
              begin
                GroupBox4.Visible:=true;
                precio:=ICOm.obtenerprecio;
                nro:=ICOm.obtenerpacinter;
                consultaros(nro,os,cat);
                desc:=verdescuento(os,cat);
                Label13.Caption:=floattostr(precio);
                Label15.Caption:=inttostr(desc);
                Label19.Caption:=floattostr(precio-(precio*desc/100))
               end;
	        end;
  end
  else
  begin
	    enc:=false;
	    While (IIte>0)and(i<=IIte)and(not enc) do
	    begin
	      Ite:=VInterTerapias[i];
	      n:=Ite.obtenernrointer;
	      If (n=(strtoint(edit1.Text))) then
	        begin
	          enc:=true;
	        end;
	      i:=i+1;
	    end;
	    If not enc then
	      showmessage('Internación no encontrada')
	      else
	        begin
            Nrointer:=i-1;
            tipointer:=2;
	          Label4.Caption:=inttostr(Ite.obtenerpacinter);
	          Label7.Caption:=inttostr(Ite.obtenersalainter);
	          Label10.Caption:=Ite.obtenerfechai;
	          Label11.Caption:=Ite.obtenerfechaf;
	          a:=Ite.obteneractiva;
	          If a then
	            GroupBox3.Visible:=true
	            else
	            GroupBox3.Visible:=false;
            If not a then
              begin
                GroupBox4.Visible:=true;
                precio:=Ite.obtenerprecio;
                nro:=Ite.obtenerpacinter;
                consultaros(nro,os,cat);
                desc:=verdescuento(os,cat);
                Label13.Caption:=floattostr(precio);
                Label15.Caption:=inttostr(desc);
                Label19.Caption:=floattostr(precio-(precio*desc/100))
               end;
	        end;
  end;
end;

procedure TFConInter.Button4Click(Sender: TObject);
var
  pago:Pagos;
  tipo:boolean;

procedure modifestadointer(var Nrointer,Tipointer:integer);
var
  ISC:InterSalaComunes;
  Icom:InterComunes;
  Ite:InterTerapias;
  est:boolean;
begin
  If Tipointer=0 then
    begin
    ISC:=VInterSalaComunes[Nrointer];
    ISC.establecerestado(true); //significa que ya fue pagada
    VInterSalaComunes[Nrointer]:=ISC;
    end
    else
      If TipoInter=1 then
      begin
      ICom:=VInterComunes[Nrointer];
      ICom.establecerestado(true);
      VInterComunes[NroInter]:=ICom;
      end
      else
      begin
      Ite:=VInterTerapias[Nrointer];
      Ite.establecerestado(true);
      VInterTerapias[Nrointer]:=Ite;
      end;
end;


begin
  IPag:=Ipag+1;
  If Combobox1.ItemIndex=0 then
    tipo:=true
    else
      tipo:=false;
  pago:=Pagos.crearpago(Ipag,Nrointer,strtofloat(label19.Caption),tipo);
  VPagos[IPag]:=pago;
  showmessage('Pago registrado');
  modifestadointer(Nrointer,Tipointer);
  Label19.Caption:='';
  Label15.Caption:='';
  Label13.Caption:='';
  GroupBox4.Visible:=false;
end;

procedure TFConInter.Button3Click(Sender: TObject);

procedure modifsalacomun;
var
  ISC:InterSalaComunes;
begin
  ISC:=VInterSalaComunes[Nrointer];
  If (strtodate(MaskEdit1.Text))>=(strtodate(Factual)) then
  begin
    ISC.establecerfechaf(MaskEdit1.Text);
    ISC.establecerprecio(PSC);
    VInterSalaComunes[Nrointer]:=ISC;
    showmessage ('Fecha modificada');
  end
  else
    showmessage('La nueva fecha de finalización no puede ser anterior a la fecha actual')
end;

procedure modifcomun;
var
  ICOm:InterComunes;
begin
  ICOm:=VInterComunes[Nrointer];
  If (strtodate(MaskEdit1.Text))>=(strtodate(Factual)) then
  begin
    ICOm.establecerfechaf(MaskEdit1.Text);
    ICom.establecerprecio(PSI);
    VInterComunes[Nrointer]:=ICOm;
    showmessage ('Fecha modificada');
  end
  else
    showmessage('La nueva fecha de finalización no puede ser anterior a la fecha actual')
end;

procedure modifterapias;
var
  Ite:InterTerapias;
begin
  Ite:=VInterTerapias[Nrointer];
  If (strtodate(MaskEdit1.Text))>=(strtodate(Factual)) then
  begin
    Ite.establecerfechaf(MaskEdit1.Text);
    Ite.establecerprecio(PSI);
    VInterTerapias[Nrointer]:=Ite;
    showmessage ('Fecha modificada');
  end
  else
    showmessage('La nueva fecha de finalización no puede ser anterior a la fecha actual')
end;

begin
  If tipointer=0 then
    modifsalacomun
      else
        If tipointer=1 then
          modifcomun
            else
              modifterapias;
end;

end.
