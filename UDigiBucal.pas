unit UDigiBucal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, VCLTee.TeeDBCrossTab, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TFDigiBucal = class(TForm)
    DBChart1: TDBChart;
    Series1: TBarSeries;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    DBCrossTabSource1: TDBCrossTabSource;
    DBGridEh1: TDBGridEh;
    procedure DBChart1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDigiBucal: TFDigiBucal;

implementation

uses
  Unit3;

{$R *.dfm}

procedure TFDigiBucal.DBChart1DblClick(Sender: TObject);
begin
FDQuery1.Close;
FDQuery1.Open();
end;

end.
