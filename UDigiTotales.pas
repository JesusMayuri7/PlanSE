unit UDigiTotales;

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
  TFDigiTotales = class(TForm)
    DBChart1: TDBChart;
    Series1: TBarSeries;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    FDQuery1usuarios: TFMTBCDField;
    FDQuery1alumnos: TLargeintField;
    FDQuery1tamizajesis: TFMTBCDField;
    FDQuery1bucalsis: TFMTBCDField;
    FDQuery1tamizajehis: TFMTBCDField;
    FDQuery1bucalhis: TFMTBCDField;
    FDQuery1tamizajesispor: TFMTBCDField;
    FDQuery1bucalsispor: TFMTBCDField;
    FDQuery1tamizajehispor: TFMTBCDField;
    FDQuery1bucalhispor: TFMTBCDField;
    Series2: TBarSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    FDQuery1TSis: TStringField;
    FDQuery1BSis: TStringField;
    FDQuery1THis: TStringField;
    FDQuery1BHis: TStringField;
    procedure DBChart1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDigiTotales: TFDigiTotales;

implementation

uses
  Unit3;

{$R *.dfm}

procedure TFDigiTotales.DBChart1DblClick(Sender: TObject);
begin
FDQuery1.Close;
FDQuery1.Open();
end;

end.
