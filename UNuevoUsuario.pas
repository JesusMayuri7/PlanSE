unit UNuevoUsuario;

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
  FireDAC.Comp.Client, FireDAC.Comp.UI, Vcl.ComCtrls, JvExComCtrls,
  JvDateTimePicker;

type
  TFNuevoUsuario = class(TForm)
    gridUsuarios: TNextGrid6;
    NxReportGridView63: TNxReportGridView6;
    NxIncrementColumn62: TNxIncrementColumn6;
    NxTextColumn65: TNxTextColumn6;
    NxTextColumn66: TNxTextColumn6;
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
    colAcademicosId: TNxNumberColumn6;
    fdGuardarUsuarios: TFDQuery;
    Label6: TLabel;
    txtColegio: TLabel;
    Label7: TLabel;
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
    fdObtenerProfesional: TFDQuery;
    colAcademicosModular: TNxTextColumn6;
    NxIncrementColumn61: TNxIncrementColumn6;
    fdEliminarUsuarios: TFDQuery;
    grp1: TGroupBox;
    lbl1: TLabel;
    txtDni: TEdit;
    lbl2: TLabel;
    txtNombres: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    cbSexo: TComboBox;
    NxTextColumn64: TNxTextColumn6;
    NxTextColumn67: TNxTextColumn6;
    NxTextColumn68: TNxTextColumn6;
    NxTextColumn69: TNxTextColumn6;
    NxTextColumn610: TNxTextColumn6;
    NxTextColumn611: TNxTextColumn6;
    Button1: TButton;
    txtNivel: TLabel;
    NxDateColumn61: TNxDateColumn6;
    txtFecha: TJvDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure gridColegiosDblClick(Sender: TObject);
    procedure gridColegiosKeyPress(Sender: TObject; var Key: Char);
    procedure btnGuardarClick(Sender: TObject);
    procedure gridAcademicosKeyPress(Sender: TObject; var Key: Char);
    procedure gridAcademicosDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure ListarColegios();
    procedure ListarAcademicos();
    procedure ListarUsuarios();
    procedure GuardarUsuarios();
    function UltimoID:Integer;
    procedure ImpControl();
    procedure LimpiarColor(grid:TNextGrid6);
    var IdControl:Integer;
  public
    { Public declarations }
  end;

var
  FNuevoUsuario: TFNuevoUsuario;

implementation

{$R *.dfm}

uses Unit3,UProcesadas;

procedure TFNuevoUsuario.btnGuardarClick(Sender: TObject);
begin
GuardarUsuarios();
end;

procedure TFNuevoUsuario.Button1Click(Sender: TObject);
begin
if gridAcademicos.SelectedRow>-1 then
  begin
      gridUsuarios.AddRow(1);
      gridUsuarios.Cell[1,gridUsuarios.LastAddedRow].AsString:=txtDni.Text;
      gridUsuarios.Cell[2,gridUsuarios.LastAddedRow].AsString:=txtNombres.Text;
      gridUsuarios.Cell[3,gridUsuarios.LastAddedRow].AsDateTime:=txtFecha.Date;
      gridUsuarios.Cell[4,gridUsuarios.LastAddedRow].AsString:=cbSexo.Items[cbSexo.ItemIndex];
      gridUsuarios.Cell[5,gridUsuarios.LastAddedRow].AsString:=gridAcademicos.Cell[colAcademicosNivel.Position,gridAcademicos.SelectedRow].AsString;
      gridUsuarios.Cell[6,gridUsuarios.LastAddedRow].AsString:=gridAcademicos.Cell[colAcademicosGrado.Position,gridAcademicos.SelectedRow].AsString;
      gridUsuarios.Cell[7,gridUsuarios.LastAddedRow].AsString:=gridAcademicos.Cell[colAcademicosSeccion.Position,gridAcademicos.SelectedRow].AsString;
      gridUsuarios.Cell[8,gridUsuarios.LastAddedRow].AsString:=gridAcademicos.Cell[colAcademicosTurno.Position,gridAcademicos.SelectedRow].AsString;
      gridUsuarios.Cell[9,gridUsuarios.LastAddedRow].AsString:=gridAcademicos.Cell[colAcademicosModular.Position,gridAcademicos.SelectedRow].AsString;
  end;

end;

procedure TFNuevoUsuario.FormCreate(Sender: TObject);
begin
ListarColegios();
end;

procedure TFNuevoUsuario.gridAcademicosDblClick(Sender: TObject);
begin
 ListarUsuarios();
end;

procedure TFNuevoUsuario.gridAcademicosKeyPress(Sender: TObject; var Key: Char);
begin
if Key=#13 then
   ListarUsuarios();
end;

procedure TFNuevoUsuario.gridColegiosDblClick(Sender: TObject);
begin
ListarAcademicos();
end;

procedure TFNuevoUsuario.gridColegiosKeyPress(Sender: TObject; var Key: Char);
begin
if (Key=#13) then
   ListarAcademicos();
end;

procedure TFNuevoUsuario.GuardarUsuarios;
var
  I: Integer;
begin
     // btnGuardar.Enabled:=False;
      for I := 0 to gridUsuarios.RowCount-1 do
      begin
            fdGuardarUsuarios.Close;
            fdGuardarUsuarios.ParamByName('dni').AsString:=gridUsuarios.Cells[1,I];
            fdGuardarUsuarios.ParamByName('nombres').AsString:=gridUsuarios.Cells[2,I];
            fdGuardarUsuarios.ParamByName('fecha_nac').AsDate:=gridUsuarios.Cell[3,I].AsDateTime;
            fdGuardarUsuarios.ParamByName('sexo').AsString:=gridUsuarios.Cells[4,I];
            fdGuardarUsuarios.ParamByName('nivel').AsString:=gridUsuarios.Cells[5,I];
            fdGuardarUsuarios.ParamByName('grado').AsInteger:=gridUsuarios.Cell[6,I].AsInteger;
            fdGuardarUsuarios.ParamByName('seccion').AsString:=gridUsuarios.Cells[7,I];
            fdGuardarUsuarios.ParamByName('turno').AsString:=gridUsuarios.Cells[8,I];
            fdGuardarUsuarios.ParamByName('modular').AsString:=gridUsuarios.Cells[9,I];
            fdGuardarUsuarios.ExecSQL();
      end;
      ShowMessage('Registros grabados');
      gridUsuarios.ClearRows;


end;

procedure TFNuevoUsuario.ImpControl;
begin

end;

procedure TFNuevoUsuario.LimpiarColor(grid: TNextGrid6);
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

procedure TFNuevoUsuario.ListarAcademicos;
var Y:Byte;
begin

   if gridColegios.SelectedRow>-1 then
    begin
         LimpiarColor(gridColegios);
         for y :=0 to gridColegios.ColCount-1 do
            begin
             gridColegios.Cell[y,gridColegios.SelectedRow].Color:=clblue;
             gridColegios.Cell[y,gridColegios.SelectedRow].Font.Color:=clWhite;
            end;
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

procedure TFNuevoUsuario.ListarColegios;
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

procedure TFNuevoUsuario.ListarUsuarios;
var x,y:Byte;
begin
    if gridAcademicos.SelectedRow>-1 then
       begin
         txtNivel.Caption:= gridAcademicos.Cell[1,gridAcademicos.SelectedRow].AsString+' - '+gridAcademicos.Cell[2,gridAcademicos.SelectedRow].AsString ;
         gridAcademicos.BeginUpdate();
         LimpiarColor(gridAcademicos);
         for y :=0 to gridAcademicos.ColCount-1 do
            begin
             gridAcademicos.Cell[y,gridAcademicos.SelectedRow].Color:=clblue;
             gridAcademicos.Cell[y,gridAcademicos.SelectedRow].Font.Color:=clWhite;
            end;
         gridAcademicos.EndUpdate();
       end;
end;

function TFNuevoUsuario.UltimoID: Integer;
begin
      fdUltimoID.Close;
      fdUltimoID.Open();
      Result:=fdUltimoID.Fields[0].AsInteger;
end;

end.
