unit UDigitadas;

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
  TFDigitadas = class(TForm)
    gridUsuarios: TNextGrid6;
    NxReportGridView63: TNxReportGridView6;
    NxIncrementColumn62: TNxIncrementColumn6;
    NxTextColumn65: TNxTextColumn6;
    NxTextColumn66: TNxTextColumn6;
    colTamizajeHis: TNxCheckBoxColumn6;
    colBucalHis: TNxCheckBoxColumn6;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    fdcolegios: TFDQuery;
    dscolegios: TDataSource;
    fdusuarios: TFDQuery;
    dsgrado: TDataSource;
    dsseccion: TDataSource;
    fdseccion: TFDQuery;
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
    colTamizajeSis: TNxCheckBoxColumn6;
    colBucalSis: TNxCheckBoxColumn6;
    btnGuardar: TButton;
    fdDigitadasTamizaje: TFDQuery;
    fdDigitadasBucal: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure gridColegiosDblClick(Sender: TObject);
    procedure gridColegiosKeyPress(Sender: TObject; var Key: Char);
    procedure btnGuardarClick(Sender: TObject);
    procedure gridAcademicosKeyPress(Sender: TObject; var Key: Char);
    procedure gridAcademicosDblClick(Sender: TObject);
    procedure gridUsuariosCellClick(Sender: TObject; ACol, ARow: Integer;
      Button: TMouseButton);
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
  FDigitadas: TFDigitadas;

implementation

{$R *.dfm}

uses Unit3;

procedure TFDigitadas.LimpiarColor(grid: TNextGrid6);
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


procedure TFDigitadas.btnImprimirClick(Sender: TObject);
begin     {
  Form2.fdImpControl.Close;
  Form2.fdImpControl.ParamByName('id').AsInteger:=IdControl;
  Form2.fdImpControl.Open();
  Form2.qrColegio.Caption:=txtColegio.Caption;
  Form2.qrNivel.Caption:=txtNivel.Caption;
  Form2.qrProfesional.Caption:=cbProfesional.DisplayValue;
  Form2.QRPQuickrep1.PreviewModal; }
end;

procedure TFDigitadas.btnGuardarClick(Sender: TObject);
begin
GrabarDigitadas();
end;

procedure TFDigitadas.FormCreate(Sender: TObject);
begin
ListarColegios();
end;

procedure TFDigitadas.GrabarDigitadas;
var I:Byte;
begin
   if cbProfesional.KeyValue>0 then
   begin
      btnGuardar.Enabled:=False;
      for I := 0 to gridUsuarios.RowCount-1 do
      begin
            if gridUsuarios.Cell[colTamizajeHis.Position,I].AsBoolean or gridUsuarios.Cell[colTamizajeSis.Position,I].AsBoolean then
            begin
            fdDigitadasTamizaje.Close;
           // if gridUsuarios.Cell[colTamizajeHis.Position,I].AsBoolean then


            fdDigitadasTamizaje.ParamByName('usuarios_id').AsString:=gridUsuarios.Cells[colUsuariosId.Position,I];
            fdDigitadasTamizaje.ParamByName('tamizajehis').AsBoolean:=gridUsuarios.Cell[colTamizajeHis.Position,I].AsBoolean;
            fdDigitadasTamizaje.ParamByName('tamizajesis').AsBoolean:=gridUsuarios.Cell[colTamizajesis.Position,I].AsBoolean;
            fdDigitadasTamizaje.ExecSQL();
            end;

            if gridUsuarios.Cell[colBucalHis.Position,I].AsBoolean or gridUsuarios.Cell[colBucalSis.Position,I].AsBoolean then
            begin
            fdDigitadasBucal.Close;
            fdDigitadasBucal.ParamByName('usuarios_id').AsString:=gridUsuarios.Cells[colUsuariosId.Position,I];
            fdDigitadasBucal.ParamByName('bucalhis').AsBoolean:=gridUsuarios.Cell[colBucalHis.Position,I].AsBoolean;
            fdDigitadasBucal.ParamByName('bucalsis').AsBoolean:=gridUsuarios.Cell[colBucalSis.Position,I].AsBoolean;
            fdDigitadasBucal.ExecSQL();
            end;
      end;
      ShowMessage('Registros grabados');
   end
   else
        ShowMessage('Seleccione Profesional');
end;

procedure TFDigitadas.gridAcademicosDblClick(Sender: TObject);
begin
 ListarUsuarios();
end;

procedure TFDigitadas.gridAcademicosKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
   ListarUsuarios();
end;

procedure TFDigitadas.gridColegiosDblClick(Sender: TObject);
begin
ListarAcademicos();
end;

procedure TFDigitadas.gridColegiosKeyPress(Sender: TObject; var Key: Char);
begin
if (Key=#13) then
   ListarAcademicos();
end;

procedure TFDigitadas.gridUsuariosCellClick(Sender: TObject; ACol, ARow: Integer;
  Button: TMouseButton);
begin
  if (ACol=colTamizajeHis.Position) then
   begin
    if gridUsuarios.Cell[colTamizajeHis.Position,ARow].AsBoolean then
      gridUsuarios.Cell[colTamizajeHis.Position,ARow].Color:=clYellow
   else
      gridUsuarios.Cell[colTamizajeHis.Position,ARow].Color:=clWindow;
   end;

   if (ACol=colBucalHis.Position) then
   begin
       if  gridUsuarios.Cell[colBucalHis.Position,ARow].AsBoolean then
          gridUsuarios.Cell[colBucalHis.Position,ARow].Color:=clYellow
       else
          gridUsuarios.Cell[colBucalHis.Position,ARow].Color:=clWindow;
   end;
     if (ACol=colTamizajeSis.Position) then
   begin
    if gridUsuarios.Cell[colTamizajeSis.Position,ARow].AsBoolean then
      gridUsuarios.Cell[colTamizajeSis.Position,ARow].Color:=clYellow
   else
      gridUsuarios.Cell[colTamizajeSis.Position,ARow].Color:=clWindow;
   end;

   if (ACol=colBucalSis.Position) then
   begin
       if  gridUsuarios.Cell[colBucalSis.Position,ARow].AsBoolean then
          gridUsuarios.Cell[colBucalSis.Position,ARow].Color:=clYellow
       else
          gridUsuarios.Cell[colBucalSis.Position,ARow].Color:=clWindow;
   end;
   gridUsuarios.Recalculate;
end;

procedure TFDigitadas.GuardarUsuarios;
begin
end;

procedure TFDigitadas.ImpControl;
begin

end;

procedure TFDigitadas.ListarAcademicos;
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

procedure TFDigitadas.ListarColegios;
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

procedure TFDigitadas.ListarUsuarios;
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
             gridUsuarios.Cell[colTamizajeHis.Position,gridUsuarios.LastAddedRow].Enabled:=false;
             gridUsuarios.Cell[colTamizajeSis.Position,gridUsuarios.LastAddedRow].Enabled:=False;
             gridUsuarios.Cell[colBucalHis.Position,gridUsuarios.LastAddedRow].Enabled:=false;
             gridUsuarios.Cell[colBucalSis.Position,gridUsuarios.LastAddedRow].Enabled:=False;
             gridUsuarios.Cell[colTamizajeHis.Position,gridUsuarios.LastAddedRow].AsBoolean:=fdusuarios.FieldByName('tamizajehis').AsBoolean;
             gridUsuarios.Cell[colTamizajeSis.Position,gridUsuarios.LastAddedRow].AsBoolean:=fdusuarios.FieldByName('tamizajesis').AsBoolean;
             gridUsuarios.Cell[colBucalHis.Position,gridUsuarios.LastAddedRow].AsBoolean:=fdusuarios.FieldByName('bucalhis').AsBoolean;
             gridUsuarios.Cell[colBucalSis.Position,gridUsuarios.LastAddedRow].AsBoolean:=fdusuarios.FieldByName('bucalsis').AsBoolean;

             gridUsuarios.Cells[1,gridUsuarios.LastAddedRow]:=fdusuarios.FieldByName('dni').AsString;
             gridUsuarios.Cells[2,gridUsuarios.LastAddedRow]:=fdusuarios.FieldByName('nombres').AsString;

             if fdusuarios.FieldByName('tamizaje').AsBoolean then
                begin
                  gridUsuarios.Cell[colTamizajeHis.Position,gridUsuarios.LastAddedRow].Color:=clGreen;
                  gridUsuarios.Cell[colTamizajeSis.Position,gridUsuarios.LastAddedRow].Color:=clGreen;
                  gridUsuarios.Cell[colTamizajeHis.Position,gridUsuarios.LastAddedRow].Enabled:=True;
                  gridUsuarios.Cell[colTamizajeSis.Position,gridUsuarios.LastAddedRow].Enabled:=True;

                end;
             if fdusuarios.FieldByName('bucal').AsBoolean then
                begin
                  gridUsuarios.Cell[colBucalHis.Position,gridUsuarios.LastAddedRow].Color:=clGreen;
                  gridUsuarios.Cell[colBucalSis.Position,gridUsuarios.LastAddedRow].Color:=clGreen;
                  gridUsuarios.Cell[colBucalHis.Position,gridUsuarios.LastAddedRow].Enabled:=True;
                  gridUsuarios.Cell[colBucalSis.Position,gridUsuarios.LastAddedRow].Enabled:=true;
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

function TFDigitadas.UltimoID: Integer;
begin
      fdUltimoID.Close;
      fdUltimoID.Open();
      Result:=fdUltimoID.Fields[0].AsInteger;
end;

end.
