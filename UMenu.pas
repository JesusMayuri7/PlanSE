unit UMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFMenu = class(TForm)
    MainMenu1: TMainMenu;
    Reportes1: TMenuItem;
    Procesadas1: TMenuItem;
    Digitadas1: TMenuItem;
    amizaje1: TMenuItem;
    Bucal1: TMenuItem;
    amizaje2: TMenuItem;
    Bucal2: TMenuItem;
    Procesar1: TMenuItem;
    Procesar2: TMenuItem;
    Digitar1: TMenuItem;
    Ingresar1: TMenuItem;
    Alumnos1: TMenuItem;
    Salir1: TMenuItem;
    otales1: TMenuItem;
    otales2: TMenuItem;
    procedure amizaje1Click(Sender: TObject);
    procedure Bucal1Click(Sender: TObject);
    procedure amizaje2Click(Sender: TObject);
    procedure Bucal2Click(Sender: TObject);
    procedure Procesar2Click(Sender: TObject);
    procedure Digitar1Click(Sender: TObject);
    procedure otales1Click(Sender: TObject);
    procedure Alumnos1Click(Sender: TObject);
    procedure Salir1Click(Sender: TObject);
    procedure otales2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

{$R *.dfm}

uses UProceTamizaje, UDigiTamizaje, UProceBucal, UDigiBucal, UProcesadas,
  UDigitadas, UDigiTotales, UNuevoUsuario, UProceTotales;

procedure TFMenu.Alumnos1Click(Sender: TObject);
begin
 FNuevoUsuario.showmodal();
end;

procedure TFMenu.amizaje1Click(Sender: TObject);
begin
  FProceTamizaje.showmodal();
end;

procedure TFMenu.amizaje2Click(Sender: TObject);
begin
   FDigiTamizaje.showmodal();
end;

procedure TFMenu.Bucal1Click(Sender: TObject);
begin
    FProceBucal.showmodal();
end;

procedure TFMenu.Bucal2Click(Sender: TObject);
begin
   FDigiBucal.ShowModal();
end;

procedure TFMenu.Digitar1Click(Sender: TObject);
begin
   FDigitadas.showmodal();
end;

procedure TFMenu.otales1Click(Sender: TObject);
begin
  FDigiTotales.showmodal();
end;

procedure TFMenu.otales2Click(Sender: TObject);
begin
  FProceTotales.ShowModal();
end;

procedure TFMenu.Procesar2Click(Sender: TObject);
begin
  FProcesadas.showmodal();
end;

procedure TFMenu.Salir1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
