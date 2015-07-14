unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SharedClasses, Unit7, jpeg, ExtCtrls;

type
  TAsigUrgencias = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    ListBox1: TListBox;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Label3: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button3: TButton;
    Button2: TButton;
    img1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AsigUrgencias: TAsigUrgencias;

implementation

uses MainProgram;

{$R *.dfm}

procedure TAsigUrgencias.Button1Click(Sender: TObject);
var
  med,i,nro,nro2:integer;
  urg:Urgencias;

  function nromedico(cad:string):integer;
  var
    i,nro:integer;
    car:char;
  begin
    i:=1;nro:=0;car:='a';
    While (car<>'-') do
      begin
        car:=cad[i];
        If car<>'-' then
          nro:=(nro*10)+(strtoint(car));
        i:=i+1;
      end;
    nromedico:=nro;
  end;


begin
  If Combobox1.ItemIndex=-1 then
    showmessage('Eliga Médico')
  else
  begin
    If Combobox2.ItemIndex=-1 then
      showmessage('Eliga sala')
    else
      begin
        IUrg:=IUrg+1;
        med:=nromedico(Combobox1.Text);
        urg:=Urgencias.crearurgencia(strtoint(Combobox2.Text),med);
        VUrgencias[IUrg]:=urg;
        Combobox1.Text:='';
        Combobox2.Text:='';
      end
  end;

  ListBox1.Clear;

  If IUrg>0 then
    begin
      ListBox1.Items.Add('Nro. Sala    -     #Matricula Médico / Nombre');
      i:=1;
      While (i<=IUrg)do
        begin
          urg:=VUrgencias[i];
          nro:=urg.obtenersurgencia;
          nro2:=urg.obtenermurgencia;
          ListBox1.Items.Add(inttostr(nro)+'        -       #'+inttostr(nro2)+'  |');
          i:=i+1;
        end;
    end;
end;

procedure TAsigUrgencias.Button3Click(Sender: TObject);
var
  i,nro,tipo,nro2:integer;
  nom,ap:string[20];
  med:Medicos;
  sala:SInternaciones;
  urg:Urgencias;
begin
  ListBox1.Clear;
  ComboBox1.Clear;
  Combobox2.Clear;
// Recorre el vector de medicos para mostrarlos
  i:=1;
  While (IMed>0)and(i<=IMed) do
    begin
      med:=VMedicos[i];
      nro:=med.obtenermatricula;
      nom:=med.obtenernombre;
      ap:=med.obtenerapellido;
      // Recupera los datos y luego los imprime
      Combobox1.Items.Add(inttostr(nro)+'- '+nom+' '+ap);
      i:=i+1;
    end;
// Recorre el vector de salas para mostrarlas
  i:=1;
  While (Isi>0)and(i<=ISi) do
    begin
      sala:=VSInternaciones[i];
      tipo:=sala.obtenertipo;
      If tipo<>0 then //Verifica que sea terapia interm. o intens.
        begin
        nro:=sala.obtenernrosala;
        // Recupera los datos y luego los imprime
        Combobox2.Items.Add(inttostr(nro));
        end;
      i:=i+1;
    end;
  ListBox1.Clear;
  If IUrg>0 then
    begin
      ListBox1.Items.Add('Nro. Sala - Matricula Médico');
      i:=1;
      While (i<=IUrg)do
        begin
          urg:=VUrgencias[i];
          nro:=urg.obtenersurgencia;
          nro2:=urg.obtenermurgencia;
          ListBox1.Items.Add(inttostr(nro)+'        -       '+inttostr(nro2));
          i:=i+1;
        end;
    end;
end;

procedure TAsigUrgencias.Button2Click(Sender: TObject);
begin
Main.show;
AsigUrgencias.Hide;
end;

procedure TAsigUrgencias.FormShow(Sender: TObject);
var
  i,nro,tipo,nro2:integer;
  nom,ap:string[20];
  med:Medicos;
  sala:SInternaciones;
  urg:Urgencias;
begin
  ListBox1.Clear;
  ComboBox1.Clear;
  Combobox2.Clear;

  // Recorre el vector de medicos para mostrarlos
  i:=1;
  While (IMed>0)and(i<=IMed) do
    begin
      med:=VMedicos[i];
      nro:=med.obtenermatricula;
      nom:=med.obtenernombre;
      ap:=med.obtenerapellido;
      // Recupera los datos y luego los imprime
      Combobox1.Items.Add(inttostr(nro)+'- '+nom+' '+ap);
      i:=i+1;
    end;

  // Recorre el vector de salas para mostrarlas
  i:=1;
  While (Isi>0)and(i<=ISi) do
    begin
      sala:=VSInternaciones[i];
      tipo:=sala.obtenertipo;
      If tipo<>0 then //Verifica que sea terapia interm. o intens.
        begin
        nro:=sala.obtenernrosala;
        // Recupera los datos y luego los imprime
        Combobox2.Items.Add(inttostr(nro));
        end;
      i:=i+1;
    end;

  ListBox1.Clear;

  If IUrg>0 then
      begin
      ListBox1.Items.Add('Nro. Sala - Matricula Médico');
      i:=1;
      While (i<=IUrg)do
        begin
          urg:=VUrgencias[i];
          nro:=urg.obtenersurgencia;
          nro2:=urg.obtenermurgencia;
          ListBox1.Items.Add(inttostr(nro)+'        -       '+inttostr(nro2));
          i:=i+1;
        end;
    end;
end;

end.
