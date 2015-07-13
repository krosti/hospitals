unit MainProgram;

interface

uses                           
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, SharedClasses, Unit7, ExtCtrls, ViewListaPacientes,
  jpeg;

type
  TInicial = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    InternacionesBTN: TButton;
    ConsultaIntrBTN: TButton;
    ConsultoriosBTN: TButton;
    ConsultasPacientesBTN: TButton;
    UrgenciasBTN: TButton;
    CargaDatosBTN: TButton;
    Image1: TImage;
    InternacionesICON: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    Label2: TLabel;
    Label3: TLabel;
    VerPacientesBTN: TButton;
    img1: TImage;
    consultas: TLabel;
    lbl1: TLabel;
    procedure InternacionesBTNClick(Sender: TObject);
    procedure ConsultoriosBTNClick(Sender: TObject);
    procedure ConsultasPacientesBTNClick(Sender: TObject);
    procedure ConsultaIntrBTNClick(Sender: TObject);
    procedure CargaDatosBTNClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UrgenciasBTNClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure VerPacientesBTNClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TInicial;
  FechaActual: string;

implementation

uses Unit4, Unit5, Unit6, Unit8, ViewInternacion;

{$R *.dfm}

procedure TInicial.InternacionesBTNClick(Sender: TObject);
begin
  Main.hide;
  FInternacion.show;
end;

procedure TInicial.ConsultoriosBTNClick(Sender: TObject);
begin
  Main.hide;
  FConsultorios.show;
end;

procedure TInicial.ConsultasPacientesBTNClick(Sender: TObject);
begin
  Main.hide;
  FPaciente.show;
end;

procedure TInicial.ConsultaIntrBTNClick(Sender: TObject);
var
  i:integer;

  procedure actualizarinternaciones ();
    var
      ISC:InterSalaComunes;
      ICO:InterComunes;
      Ite:InterTerapias;
      i,nro:integer;
      ff:string;
      a:boolean;

    procedure liberarsala (var nro:integer);
      var
        i,n:integer;
        sala:Salas;
        enc:boolean;
      begin
        i:=1;enc:=false;
        While(i<=Isa)and(not enc)do
        begin
          sala:=VSalas[i];
          n:=sala.obtenernrosala;
          If nro=n then
            enc:=true;
          i:=i+1;
        end;
        sala.estalecerestadosala(true);
        VSalas[i-1]:=sala;
      end;

    procedure restarcama(var nro:integer);
      var
        i,n,camas:integer;
        sala:SInternaciones;
        enc:boolean;
      begin
        i:=1;enc:=false;
        While(i<=Isi)and(not enc)do
        begin
          sala:=VSInternaciones[i];
          n:=sala.obtenernrosala;
          If nro=n then
            enc:=true;
          i:=i+1;
        end;
        camas:=sala.obtenernroocupadas;
        sala.establecernroocupadas(camas+1);
        VSinternaciones[i-1]:=sala;
      end;

  begin
    i:=1;
    While (IIsc>0)and(i<=IIsc)do
    begin
      ISC:=VInterSalaComunes[i];
      a:=ISC.obteneractiva;
      ff:=ISC.obtenerfechaf;
      If a then
        If (not fecha(FActual,ff)) then
          begin
           ISC.estableceractiva(false);
           VInterSalaComunes[i]:=ISC;
           nro:=ISC.obtenersalainter;
           liberarsala(nro);
          end;
      i:=i+1;
    end;
    i:=1;
    While (IIco>0)and(i<=IIco)do
    begin
      ICO:=VInterComunes[i];
      a:=ICO.obteneractiva;
      ff:=ICO.obtenerfechaf;
      If a then
        If (not fecha(FActual,ff)) then
          begin
           ICO.estableceractiva(false);
           VInterComunes[i]:=ICO;
           nro:=ICO.obtenersalainter;
           restarcama(nro);
          end;
      i:=i+1;
    end;
    i:=i+1;
    While (IIte>0)and(i<=IIte)do
    begin
      Ite:=VInterTerapias[i];
      a:=Ite.obteneractiva;
      ff:=Ite.obtenerfechaf;
      If a then
        If (not fecha(FActual,ff)) then
          begin
           Ite.estableceractiva(false);
           VInterTerapias[i]:=Ite;
           nro:=Ite.obtenersalainter;
           restarcama(nro);
          end;
      i:=i+1;
    end;
  end;

begin
  Main.hide;
  FConInter.show;
  actualizarinternaciones;
end;

procedure TInicial.CargaDatosBTNClick(Sender: TObject);
begin
Main.hide;
FDatos.show;
end;

procedure TInicial.FormCreate(Sender: TObject);
begin
  Iper:=0;
  IMed:=0;
  ISec:=0;
  IHor:=0;
  ICns:=0;
  IEnf:=0;
  IAux:=0;
  ISa:=0;
  ISi:=0;
  Iurg:=0;
  IPed:=0;
  IPac:=0;
  IOS:=0;
  ICO:=0;
  IIsc:=0;
  IIco:=0;
  IIte:=0;
  Ipag:=0;
  Int:=0;
  FechaActual := DateToStr(Date);
  Label2.Caption := FechaActual;
end;

procedure TInicial.UrgenciasBTNClick(Sender: TObject);
begin
  Main.Hide;
  AsigUrgencias.show;
end;

procedure TInicial.BitBtn1Click(Sender: TObject);
begin
  Main.Close;
end;

procedure TInicial.VerPacientesBTNClick(Sender: TObject);
begin
  FormListaPacientes1.Show;
  Main.Hide;
end;

end.
