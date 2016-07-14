unit UDigiTamizaje;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, VCLTee.TeeDBCrossTab, NxGridView6, NxColumns6,
  NxControls6, NxCustomGrid6, NxVirtualGrid6, NxDBGrid6, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh;

type
  TFDigiTamizaje = class(TForm)
    DBChart1: TDBChart;
    Series1: TBarSeries;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDQuery1codigo_modular: TStringField;
    FDQuery1abreviatura: TStringField;
    FDQuery1nivel: TStringField;
    FDQuery1usuarios: TIntegerField;
    FDQuery1alumnos: TLargeintField;
    FDQuery1tamizajehis: TStringField;
    FDQuery1bucalhis: TStringField;
    FDQuery1tamizajesis: TStringField;
    FDQuery1bucalsis: TStringField;
    FDQuery1tamizajepor: TFMTBCDField;
    FDQuery1bucalpor: TFMTBCDField;
    DBGridEh1: TDBGridEh;
    procedure DBChart1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDigiTamizaje: TFDigiTamizaje;

implementation

uses
  Unit3;

{$R *.dfm}

procedure TFDigiTamizaje.DBChart1DblClick(Sender: TObject);
begin
FDQuery1.Close;
FDQuery1.Open();
end;

end.
