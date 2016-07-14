unit UProceTotales;

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
  TFProceTotales = class(TForm)
    DBChart1: TDBChart;
    Series1: TBarSeries;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    Series2: TBarSeries;
    FDQuery1TOTAL: TStringField;
    FDQuery1usuarios: TFMTBCDField;
    FDQuery1alumnos: TLargeintField;
    FDQuery1tamizajeS: TFMTBCDField;
    FDQuery1bucalS: TFMTBCDField;
    FDQuery1tamizajepor: TFMTBCDField;
    FDQuery1bucalpor: TFMTBCDField;
    procedure DBChart1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FProceTotales: TFProceTotales;

implementation

uses
  Unit3;

{$R *.dfm}

procedure TFProceTotales.DBChart1DblClick(Sender: TObject);
begin
FDQuery1.Close;
FDQuery1.Open();
end;

end.
