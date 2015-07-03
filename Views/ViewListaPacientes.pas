unit ViewListaPacientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ValEdit, SharedClasses, StdCtrls, Buttons;

type
  TFormListaPacientes1 = class(TForm)
    listaPacientes1: TValueListEditor;
    Volver: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure VolverClick(Sender: TObject);
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

procedure TFormListaPacientes1.FormCreate(Sender: TObject);
  var
    ap,no:string;
    i,nu,totalPacientes:integer;
    pac:Pacientes;
begin
  i:=1;
  totalPacientes := IPac;
  While (totalPacientes > 0) and(i <= totalPacientes) do
   begin
    pac:=VPacientes[i];
    ap:=pac.obtenerapellido;
    If ap=edit2.text then
      begin
        nu:=pac.obtenernropac;
        no:=pac.obtenernombre;
        //Combobox5.Items.Add(inttostr(nu)+'- '+no+' - '+ap);
        listaPacientes1.InsertRow(nu, no+' - '+ap, True);
      end;
    i:=i+1;
   end;
end;

procedure TFormListaPacientes1.VolverClick(Sender: TObject);
begin
  FormListaPacientes1.Hide;
  Main.Show;
end;

end.
