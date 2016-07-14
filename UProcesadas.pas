unit UProcesadas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, NxGridView6, NxColumns6,
  NxControls6, NxCustomGrid6, NxVirtualGrid6, NxGrid6, Vcl.DBCtrls,
  JvExControls, JvDBLookup, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  TFProcesadas = class(TForm)
    gridUsuarios: TNextGrid6;
    NxReportGridView63: TNxReportGridView6;
    NxIncrementColumn62: TNxIncrementColumn6;
    NxTextColumn65: TNxTextColumn6;
    NxTextColumn66: TNxTextColumn6;
    colUsuariosTamizaje: TNxCheckBoxColumn6;
    colUsuariosBucal: TNxCheckBoxColumn6;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    fdcolegios: TFDQuery;
    dscolegios: TDataSource;
    fdusuarios: TFDQuery;
    dsgrado: TDataSource;
    dsseccion: TDataSource;
    fdseccion: TFDQuery;
    btnGuardar: TButton;
    gridColegios: TNextGrid6;
    NxTextColumn61: TNxTextColumn6;
    NxTextColumn62: TNxTextColumn6;
    NxTextColumn63: TNxTextColumn6;
    NxReportGridView61: TNxReportGridView6;
    gridAcademicos: TNextGrid6;
    colAcademicosNivel: TNxTextColumn6;
    colAcademicosGrado: TNxTextColumn6;
    colAcademicosSeccion: TNxTextColumn6;
    colAcademicosTurno: TNxTextColumn6;
    NxReportGridView62: TNxReportGridView6;
    fdacademicos: TFDQuery;
    colColegiosId: TNxNumberColumn6;
    colUsuariosId: TNxNumberColumn6;
    colAcademicosId: TNxNumberColumn6;
    fdGuardarUsuarios: TFDQuery;
    Label6: TLabel;
    txtColegio: TLabel;
    Label7: TLabel;
    txtNivel: TLabel;
    cbProfesional: TJvDBLookupCombo;
    Label2: TLabel;
    fdProfesional: TFDQuery;
    dsProfesional: TDataSource;
    fdProfesionalid: TFDAutoIncField;
    fdProfesionalbrigada: TStringField;
    fdProfesionaltipo: TStringField;
    fdProfesionaldni: TStringField;
    fdProfesionalnombres: TStringField;
    fdProfesionalespecialista: TStringField;
    fdProfeControl: TFDQuery;
    fdUltimoID: TFDQuery;
    btnImprimir: TButton;
    fdObtenerProfesional: TFDQuery;
    colAcademicosModular: TNxTextColumn6;
    colProfesionalId: TNxNumberColumn6;
    NxIncrementColumn61: TNxIncrementColumn6;
    fdEliminarUsuarios: TFDQuery;
    colProfeControlId: TNxNumberColumn6;
    Button1: TButton;
    fdDigitadasTamizaje: TFDQuery;
    fdDigitadasBucal: TFDQuery;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure gridColegiosDblClick(Sender: TObject);
    procedure gridColegiosKeyPress(Sender: TObject; var Key: Char);
    procedure btnGuardarClick(Sender: TObject);
    procedure gridAcademicosKeyPress(Sender: TObject; var Key: Char);
    procedure gridAcademicosDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure gridUsuariosCellClick(Sender: TObject; ACol, ARow: Integer;
      Button: TMouseButton);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    procedure ListarColegios();
    procedure ListarAcademicos();
    procedure ListarUsuarios();
    procedure GuardarUsuarios();
    function UltimoID:Integer;
    procedure ImpControl();
    procedure LimpiarColor(grid: TNextGrid6);
    procedure GrabarDigitadas();
    var IdControl:Integer;
  public
    { Public declarations }
  end;

var
  FProcesadas: TFProcesadas;

implementation

{$R *.dfm}

uses Unit3, UCargoFuas, UProceTamizaje, UDigitadas, UNuevoUsuario;

procedure TFProcesadas.LimpiarColor(grid: TNextGrid6);
var
  x,y: Integer;
begin
   for x := 0 to grid.RowCount-1 do
   begin
        for y:=0 to grid.ColCount-1 do
            begin
                     grid.Cell[y,x].Color:=clwhite;
                     grid.Cell[y,x].Font.Color:=clWindowText;
            end;
   end;
end;


procedure TFProcesadas.btnImprimirClick(Sender: TObject);
begin
  FCargoFuas.fdImpControl.Close;
  FCargoFuas.fdImpControl.ParamByName('id').AsInteger:=IdControl;
  FCargoFuas.fdImpControl.Open();
  FCargoFuas.qrColegio.Caption:=txtColegio.Caption;
  FCargoFuas.qrNivel.Caption:=txtNivel.Caption;
  FCargoFuas.qrProfesional.Caption:=cbProfesional.DisplayValue;
  FCargoFuas.QRPQuickrep1.PreviewModal;
end;

procedure TFProcesadas.Button1Click(Sender: TObject);
begin
FNuevoUsuario.showmodal;
end;

procedure TFProcesadas.Button2Click(Sender: TObject);
begin
FDigitadas.ShowModal;
end;

procedure TFProcesadas.Button3Click(Sender: TObject);
begin
FProceTamizaje.ShowModal;
end;

procedure TFProcesadas.btnGuardarClick(Sender: TObject);
begin
GuardarUsuarios();
end;

procedure TFProcesadas.FormCreate(Sender: TObject);
begin
ListarColegios();
end;

procedure TFProcesadas.GrabarDigitadas;
var I:Byte;
begin
   if cbProfesional.KeyValue>0 then
   begin
      btnGuardar.Enabled:=False;
      for I := 0 to gridUsuarios.RowCount-1 do
      begin
           if not(gridUsuarios.Cell[colUsuariosTamizaje.Position,I].AsBoolean and gridUsuarios.Cell[colUsuariosBucal.Position,I].AsBoolean) then
                     begin
                      fdEliminarUsuarios.Close;
                      fdEliminarUsuarios.ParamByName('usuarios_id').AsInteger:=gridUsuarios.Cell[colUsuariosId.Position,I].AsInteger;
                      fdEliminarUsuarios.ExecSQL();
                     end;

            if gridUsuarios.Cell[colUsuariosTamizaje.Position,I].AsBoolean or gridUsuarios.Cell[colUsuariosBucal.Position,I].AsBoolean then
            begin
            fdGuardarUsuarios.Close;
            fdGuardarUsuarios.ParamByName('dni').AsString:=gridUsuarios.Cells[1,I];
             if gridUsuarios.Cell[colUsuariosTamizaje.Position,I].AsBoolean then
                fdGuardarUsuarios.ParamByName('tamizaje').AsBoolean:=True
             else
                fdGuardarUsuarios.ParamByName('tamizaje').AsBoolean:=false;

              if gridUsuarios.Cell[colUsuariosBucal.Position,I].AsBoolean then
                fdGuardarUsuarios.ParamByName('bucal').AsBoolean:=True
             else
                fdGuardarUsuarios.ParamByName('bucal').AsBoolean:=False;

            fdGuardarUsuarios.ParamByName('usuarios_id').AsString:=gridUsuarios.Cells[colUsuariosId.Position,I];

            fdGuardarUsuarios.ParamByName('profecontrol_id').AsInteger:=IdControl;
            fdGuardarUsuarios.ExecSQL();


            end;
      end;
      ShowMessage('Registros grabados');
   end
   else
        ShowMessage('Seleccione Profesional');
end;

procedure TFProcesadas.gridAcademicosDblClick(Sender: TObject);
begin
 ListarUsuarios();
end;

procedure TFProcesadas.gridAcademicosKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
   ListarUsuarios();
end;

procedure TFProcesadas.gridColegiosDblClick(Sender: TObject);
begin
ListarAcademicos();
end;

procedure TFProcesadas.gridColegiosKeyPress(Sender: TObject; var Key: Char);
begin
if (Key=#13) then
   ListarAcademicos();
end;

procedure TFProcesadas.gridUsuariosCellClick(Sender: TObject; ACol, ARow: Integer;
  Button: TMouseButton);
begin
  if (ACol=colUsuariosTamizaje.Position) then
   begin
    if gridUsuarios.Cell[colUsuariosTamizaje.Position,ARow].AsBoolean then
      gridUsuarios.Cell[colUsuariosTamizaje.Position,ARow].Color:=clYellow
   else
      gridUsuarios.Cell[colUsuariosTamizaje.Position,ARow].Color:=clWindow;
   end;

   if (ACol=colUsuariosBucal.Position) then
   begin
       if  gridUsuarios.Cell[colUsuariosBucal.Position,ARow].AsBoolean then
          gridUsuarios.Cell[colUsuariosBucal.Position,ARow].Color:=clYellow
       else
          gridUsuarios.Cell[colUsuariosBucal.Position,ARow].Color:=clWindow;
   end;
   gridUsuarios.Recalculate;
end;

procedure TFProcesadas.GuardarUsuarios;
var
  I: Integer;
begin
   if cbProfesional.KeyValue>0 then
   begin
      btnGuardar.Enabled:=False;
      IdControl:=0;
      fdProfeControl.Close;
      fdProfeControl.ParamByName('profesional_id').AsInteger:=cbProfesional.KeyValue;
      fdProfeControl.ExecSQL();
      IdControl:=UltimoID();
      for I := 0 to gridUsuarios.RowCount-1 do
      begin
           if not(gridUsuarios.Cell[colUsuariosTamizaje.Position,I].AsBoolean and gridUsuarios.Cell[colUsuariosBucal.Position,I].AsBoolean) then
                     begin
                      fdEliminarUsuarios.Close;
                      fdEliminarUsuarios.ParamByName('usuarios_id').AsInteger:=gridUsuarios.Cell[colUsuariosId.Position,I].AsInteger;
                      fdEliminarUsuarios.ExecSQL();
                     end;

            if gridUsuarios.Cell[colUsuariosTamizaje.Position,I].AsBoolean or gridUsuarios.Cell[colUsuariosBucal.Position,I].AsBoolean then
            begin
            fdGuardarUsuarios.Close;
            fdGuardarUsuarios.ParamByName('dni').AsString:=gridUsuarios.Cells[1,I];
             if gridUsuarios.Cell[colUsuariosTamizaje.Position,I].AsBoolean then
                fdGuardarUsuarios.ParamByName('tamizaje').AsBoolean:=True
             else
                fdGuardarUsuarios.ParamByName('tamizaje').AsBoolean:=false;

              if gridUsuarios.Cell[colUsuariosBucal.Position,I].AsBoolean then
                fdGuardarUsuarios.ParamByName('bucal').AsBoolean:=True
             else
                fdGuardarUsuarios.ParamByName('bucal').AsBoolean:=False;

            fdGuardarUsuarios.ParamByName('usuarios_id').AsString:=gridUsuarios.Cells[colUsuariosId.Position,I];

            fdGuardarUsuarios.ParamByName('profecontrol_id').AsInteger:=IdControl;
            fdGuardarUsuarios.ExecSQL();


            end;
      end;
      ShowMessage('Registros grabados');
      btnImprimir.Enabled:=True;
   end
   else
        ShowMessage('Seleccione Profesional');

end;

procedure TFProcesadas.ImpControl;
begin

end;

procedure TFProcesadas.ListarAcademicos;
var y:Byte;
begin

   if gridColegios.SelectedRow>-1 then
    begin
         gridColegios.BeginUpdate();
         LimpiarColor(gridColegios);
         for y :=0 to gridColegios.ColCount-1 do
            begin
             gridColegios.Cell[y,gridColegios.SelectedRow].Color:=clblue;
             gridColegios.Cell[y,gridColegios.SelectedRow].Font.Color:=clWhite;
            end;
          gridColegios.EndUpdate();
          gridAcademicos.ClearRows;
          gridUsuarios.ClearRows;
          txtColegio.Caption:='';
          txtNivel.Caption:='';
          fdacademicos.Close;
          fdacademicos.ParamByName('id').AsInteger:=gridColegios.Cell[colColegiosId.Position,gridColegios.SelectedRow].AsInteger;
          fdacademicos.Open();
          txtColegio.Caption:= gridColegios.Cell[1,gridColegios.SelectedRow].AsString+' - '+gridColegios.Cell[2,gridColegios.SelectedRow].AsString;

          while not fdacademicos.Eof do
          begin
             gridAcademicos.AddRow(1);
             gridAcademicos.Cells[0,gridAcademicos.LastAddedRow]:=fdacademicos.FieldByName('nivel').AsString;
             gridAcademicos.Cells[1,gridAcademicos.LastAddedRow]:=fdacademicos.FieldByName('grado').AsString;
             gridAcademicos.Cells[2,gridAcademicos.LastAddedRow]:=fdacademicos.FieldByName('seccion').AsString;
             gridAcademicos.Cells[3,gridAcademicos.LastAddedRow]:=fdacademicos.FieldByName('turno').AsString;
             gridAcademicos.Cells[colAcademicosId.Position,gridAcademicos.LastAddedRow]:=fdacademicos.FieldByName('id').AsString;
             gridAcademicos.Cells[colAcademicosModular.Position,gridAcademicos.LastAddedRow]:=fdacademicos.FieldByName('modular').AsString;

            fdacademicos.Next;
          end;
    end;
end;

procedure TFProcesadas.ListarColegios;
begin
          fdcolegios.Close;
          fdcolegios.Open();
          while not fdcolegios.Eof do
          begin
             gridColegios.AddRow(1);
             gridColegios.Cells[1,gridColegios.LastAddedRow]:=fdcolegios.FieldByName('codigo_modular').AsString;
             gridColegios.Cells[2,gridColegios.LastAddedRow]:=fdcolegios.FieldByName('descripcion').AsString;
             gridColegios.Cells[3,gridColegios.LastAddedRow]:=fdcolegios.FieldByName('nivel').AsString;
             gridColegios.Cells[colColegiosId.Position,gridColegios.LastAddedRow]:=fdcolegios.FieldByName('id').AsString;
            fdcolegios.Next;
          end;

end;

procedure TFProcesadas.ListarUsuarios;
var y:Byte;
begin
if gridAcademicos.SelectedRow>-1 then
    begin
         gridAcademicos.BeginUpdate();
         LimpiarColor(gridAcademicos);
         for y :=0 to gridAcademicos.ColCount-1 do
            begin
             gridAcademicos.Cell[y,gridAcademicos.SelectedRow].Color:=clblue;
             gridAcademicos.Cell[y,gridAcademicos.SelectedRow].Font.Color:=clWhite;
            end;
         gridAcademicos.EndUpdate();
          gridUsuarios.ClearRows;
          txtNivel.Caption:='';
          cbProfesional.KeyValue:=0;
          fdusuarios.Close;
          fdusuarios.ParamByName('nivel').AsString:=gridAcademicos.Cell[colAcademicosNivel.Position,gridAcademicos.SelectedRow].AsString;
          fdusuarios.ParamByName('grado').AsInteger:=gridAcademicos.Cell[colAcademicosGrado.Position,gridAcademicos.SelectedRow].AsInteger;
          fdusuarios.ParamByName('seccion').AsString:=gridAcademicos.Cell[colAcademicosSeccion.Position,gridAcademicos.SelectedRow].AsString;
          fdusuarios.ParamByName('turno').AsString:=gridAcademicos.Cell[colAcademicosTurno.Position,gridAcademicos.SelectedRow].AsString;
          fdusuarios.ParamByName('modular').AsString:=gridAcademicos.Cell[colAcademicosModular.Position,gridAcademicos.SelectedRow].AsString;


          fdusuarios.Open();
          txtNivel.Caption:=gridAcademicos.Cell[1,gridAcademicos.SelectedRow].AsString+' - '+gridAcademicos.Cell[2,gridAcademicos.SelectedRow].AsString+' - '+gridAcademicos.Cell[3,gridAcademicos.SelectedRow].AsString ;
          while not fdusuarios.Eof do
          begin
             gridUsuarios.AddRow(1);
             gridUsuarios.Cells[1,gridUsuarios.LastAddedRow]:=fdusuarios.FieldByName('dni').AsString;
             gridUsuarios.Cells[2,gridUsuarios.LastAddedRow]:=fdusuarios.FieldByName('nombres').AsString;
             if fdusuarios.FieldByName('tamizaje').AsBoolean then
                begin
                gridUsuarios.Cell[colUsuariosTamizaje.Position,gridUsuarios.LastAddedRow].asboolean:=true;
                gridUsuarios.Cell[colUsuariosTamizaje.Position,gridUsuarios.LastAddedRow].Color:=clGreen;
                end;
             if fdusuarios.FieldByName('bucal').AsBoolean then
                begin
                gridUsuarios.Cell[colUsuariosBucal.Position,gridUsuarios.LastAddedRow].asboolean:=true;
                gridUsuarios.Cell[colUsuariosBucal.Position,gridUsuarios.LastAddedRow].Color:=clGreen;
                end;

             gridUsuarios.Cells[colUsuariosId.Position,gridUsuarios.LastAddedRow]:=fdusuarios.FieldByName('id').AsString;
             gridUsuarios.Cells[colProfesionalId.Position,gridUsuarios.LastAddedRow]:=fdusuarios.FieldByName('profesional_id').AsString;
             gridUsuarios.Cells[colProfeControlId.Position,gridUsuarios.LastAddedRow]:=fdusuarios.FieldByName('profecontrol_id').AsString;
            fdusuarios.Next;
          end;
          fdObtenerProfesional.Close;
          fdObtenerProfesional.ParamByName('nivel').AsString:=gridAcademicos.Cell[colAcademicosNivel.Position,gridAcademicos.SelectedRow].AsString;
          fdObtenerProfesional.ParamByName('grado').AsInteger:=gridAcademicos.Cell[colAcademicosGrado.Position,gridAcademicos.SelectedRow].AsInteger;
          fdObtenerProfesional.ParamByName('seccion').AsString:=gridAcademicos.Cell[colAcademicosSeccion.Position,gridAcademicos.SelectedRow].AsString;
          fdObtenerProfesional.ParamByName('turno').AsString:=gridAcademicos.Cell[colAcademicosTurno.Position,gridAcademicos.SelectedRow].AsString;
          fdObtenerProfesional.ParamByName('modular').AsString:=gridAcademicos.Cell[colAcademicosModular.Position,gridAcademicos.SelectedRow].AsString;

          fdObtenerProfesional.Open();
          if not(fdObtenerProfesional.Eof and fdObtenerProfesional.Bof) then
             begin
             cbProfesional.KeyValue:=fdObtenerProfesional.FieldByName('profesional_id').AsInteger;
             fdObtenerProfesional.Close;
             end;
       btnGuardar.Enabled:=True;
       gridUsuarios.Recalculate;
    end;
end;

function TFProcesadas.UltimoID: Integer;
begin
      fdUltimoID.Close;
      fdUltimoID.Open();
      Result:=fdUltimoID.Fields[0].AsInteger;
end;

end.
