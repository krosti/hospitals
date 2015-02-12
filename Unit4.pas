unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls,Unit2,Unit7, Mask;

type
  TFConsultorios = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Label4: TLabel;
    Label5: TLabel;
    ListBox1: TListBox;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Button2: TButton;
    ListBox2: TListBox;
    Label6: TLabel;
    Edit1: TEdit;
    Button3: TButton;
    Button4: TButton;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    GroupBox1: TGroupBox;
    ComboBox3: TComboBox;
    ListBox3: TListBox;
    Button5: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConsultorios: TFConsultorios;

implementation

uses MainProgram;

{$R *.dfm}

procedure TFConsultorios.Button2Click(Sender: TObject);
begin
FConsultorios.hide;
Main.show;
end;

procedure TFConsultorios.Button3Click(Sender: TObject);
var
  i,n:integer;
  e:string[20];
  cons:Consultorios;
begin
  ListBox1.Clear;
  ComboBox1.Clear;
  Combobox2.Clear;
  Combobox3.Clear;
// Recorre el vector de consultorios para mostrarlos
  i:=1;
  While (ICns>0)and(i<=ICns) do
    begin
      cons:=VConsultorios[i];
      n:=cons.obtenernrocons;
      e:=cons.obtenerespecialidad;
      // Recupera los datos y luego los imprime
      Listbox1.Items.Add(inttostr(n)+': '+e);
      Combobox1.Items.Add(inttostr(n));
      Combobox3.Items.Add(inttostr(n));
      i:=i+1;
    end;
end;

procedure TFConsultorios.Button4Click(Sender: TObject);
var
  i,i2,n,c,c2,n2:integer;
  hor:Horarios;
  ped:Pedidos;
  f:string[25];
  reservado:boolean;
begin
    Combobox2.Clear;
    i:=1;
    While (IHor>0)and(i<=IHor)do
    begin
      // Recupera informaci�n
      hor:=VHorarios[i];
      c:=hor.obtenerconshorario;
      // Muestra los horarios si coinciden los datos
      If (c=strtoint(Combobox1.Text)) then
        begin
            n:=hor.obtenernrohorario;
            //Si no hay pedidos reservados automaticamente agrega este
            //horario a la lista
            If IPed=0 then
               begin
                  Combobox2.Items.Add(inttostr(n));
               end
               else
                begin
                  i2:=1;
                  reservado:=false;
                  //Sino recorre para ver si fue reservado
                  Repeat
                    ped:=VPedidos[i2];
                    c2:=ped.obtenerconsultorioped;
                    f:=ped.obtenerfechapedido;
                    n2:=ped.obtenerturnoped;
                    //Si coincide el consultorio y turno, mira la fecha
                    If (c=c2) and (n=n2) and (f=MaskEdit1.Text) then
                      begin
                        reservado:=true;
                      end;
                    i2:=i2+1;
                  until (i2>IPed) or (reservado);
                  //Si en ese horario y fecha no hay nada, entonces reserva
                  If not reservado then
                    begin
                      Combobox2.Items.Add(inttostr(n));
                    end;
                end;
        end;
    i:=i+1;
    end;
end;

procedure TFConsultorios.Button1Click(Sender: TObject);
var
  ped:Pedidos;
  hor:Horarios;
  i,t,c,n,c2:integer;
  s:longint;
  f:string[25];
begin
  If (not digitos(Edit1.Text)) then
  showmessage('DNI Inv�lido')
  else
  If (Combobox1.ItemIndex<>-1) and (Combobox2.ItemIndex<>-1) then
  begin
    //Recupera la informaci�n
    s:=strtoint(Edit1.text);
    t:=strtoint(Combobox2.Text);
    c:=strtoint(Combobox1.Text);
    f:=MaskEdit1.Text;
    //Incrementa el �ndice
    IPed:=IPed+1;
    //Almacena en el objeto
    ped:=Pedidos.crearpedido(t,c,s,f);
    //Almacena en el vector
    VPedidos[IPed]:=ped;
  end
  else
    showmessage('Seleccione consultorio y horario');
end;

procedure TFConsultorios.Button5Click(Sender: TObject);
var
  i,t,c,t2,c2:integer;
  f:string[25];
  ped:Pedidos;
begin
  ListBox3.Clear;
  If Combobox3.ItemIndex=-1 then
    showmessage('Seleccione una opci�n')
  else
  begin
  i:=1;
  c:=strtoint(Combobox3.Text);
  ListBox3.Items.Add('Turno - Fecha');
  While (IPed>0) and (i<=Iped) do
  begin
    ped:=VPedidos[i];
    c2:=ped.obtenerconsultorioped;
    //Recorre los pedidos y cuando coincide muestra
    If (c=c2) then
      begin
      t:=ped.obtenerturnoped;
      f:=ped.obtenerfechapedido;
      ListBox3.Items.Add(inttostr(t)+'  -  '+f);
      end;
  i:=i+1;
  end;
  end;
end;

end.