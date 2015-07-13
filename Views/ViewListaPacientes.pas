unit ViewListaPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ValEdit, SharedClasses, Unit7, StdCtrls, Buttons, jpeg,
  ExtCtrls;

type
  TFormListaPacientes1 = class(TForm)
    listaPacientes1: TValueListEditor;
    Volver: TBitBtn;
    btn1: TButton;
    img1: TImage;
    lbl1: TLabel;
    procedure VolverClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListaPacientes1: TFormListaPacientes1;

implementation

uses MainProgram;

{$R *.dfm}

procedure TFormListaPacientes1.VolverClick(Sender: TObject);
begin
  FormListaPacientes1.Hide;
  Main.Show;
end;

procedure TFormListaPacientes1.btn1Click(Sender: TObject);
var
    ap,no:string;
    i,nu:integer;
    pac:Pacientes;
    dni:LongInt;

begin
  i := 1;

  listaPacientes1.Strings.Clear;

  While (IPac>0)and(i<=IPac) do
   begin
    pac:=VPacientes[i];
    ap:=pac.obtenerapellido;
    nu:=pac.obtenernropac;
    no:=pac.obtenernombre;
    dni:=pac.obtenerdnipac;

    listaPacientes1.InsertRow(IntToStr(nu), IntToStr(dni)+' | '+no+' - '+ap, True);

    i:=i+1;
    end;
end;


procedure TFormListaPacientes1.FormShow(Sender: TObject);
var
    ap,no:string;
    i,nu:integer;
    pac:Pacientes;
    dni:LongInt;

begin
  i := 1;

  listaPacientes1.Strings.Clear;

  While (IPac>0)and(i<=IPac) do
   begin
    pac:=VPacientes[i];
    ap:=pac.obtenerapellido;
    nu:=pac.obtenernropac;
    no:=pac.obtenernombre;
    dni:=pac.obtenerdnipac;

    listaPacientes1.InsertRow(IntToStr(nu), IntToStr(dni)+' | '+no+' - '+ap, True);

    i:=i+1;
    end;

end;

end.
