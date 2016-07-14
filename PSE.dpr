program PSE;

uses
  Vcl.Forms,
  UNuevoUsuario in 'UNuevoUsuario.pas' {FNuevoUsuario},
  Vcl.Themes,
  Vcl.Styles,
  Unit3 in 'Unit3.pas' {DataModule3: TDataModule},
  UCargoFuas in 'UCargoFuas.pas' {FCargoFuas},
  UIngresados in 'UIngresados.pas' {FIngresados},
  UDigitadas in 'UDigitadas.pas' {FDigitadas},
  UProcesadas in 'UProcesadas.pas' {FProcesadas},
  UProceBucal in 'UProceBucal.pas' {FProceBucal},
  UDigiBucal in 'UDigiBucal.pas' {FDigiBucal},
  UProceTamizaje in 'UProceTamizaje.pas' {FProceTamizaje},
  UProceTotales in 'UProceTotales.pas' {FProceTotales},
  UMenu in 'UMenu.pas' {FMenu},
  UDigiTotales in 'UDigiTotales.pas' {FDigiTotales},
  UDigiTamizaje in 'UDigiTamizaje.pas' {FDigiTamizaje};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule3, DataModule3);
  Application.CreateForm(TFMenu, FMenu);
  Application.CreateForm(TFProcesadas, FProcesadas);
  Application.CreateForm(TFDigitadas, FDigitadas);
  Application.CreateForm(TFIngresados, FIngresados);
  Application.CreateForm(TFNuevoUsuario, FNuevoUsuario);
  Application.CreateForm(TFCargoFuas, FCargoFuas);
  Application.CreateForm(TFProceBucal, FProceBucal);
  Application.CreateForm(TFDigiBucal, FDigiBucal);
  Application.CreateForm(TFProceTamizaje, FProceTamizaje);
  Application.CreateForm(TFProceTotales, FProceTotales);
  Application.CreateForm(TFDigiTotales, FDigiTotales);
  Application.CreateForm(TFDigiTamizaje, FDigiTamizaje);
  Application.Run;
end.
