object FProcesadas: TFProcesadas
  Left = 0
  Top = 0
  Caption = 'Buscar'
  ClientHeight = 660
  ClientWidth = 1349
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 19
    Top = 31
    Width = 58
    Height = 16
    Caption = 'Colegios:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtColegio: TLabel
    Left = 83
    Top = 28
    Width = 5
    Height = 19
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 509
    Top = 31
    Width = 79
    Height = 16
    Caption = 'Nivel-Grado:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtNivel: TLabel
    Left = 601
    Top = 30
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 858
    Top = 29
    Width = 81
    Height = 16
    Caption = 'Profesional :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object gridUsuarios: TNextGrid6
    Left = 850
    Top = 53
    Width = 487
    Height = 563
    ParentColor = False
    TabOrder = 0
    ActiveView = NxReportGridView63
    ActiveViewIndex = 0
    ScrollBars = [sbVertical]
    SelectFullRow = True
    OnCellClick = gridUsuariosCellClick
    object NxReportGridView63: TNxReportGridView6
      ShowFooter = True
    end
    object NxIncrementColumn62: TNxIncrementColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Alignment = taCenter
      Header.Caption = '#'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 0
      PlaceholderText = '1'
      Position = 0
      Width = 25
      InsertString = '-1'
    end
    object NxTextColumn65: TNxTextColumn6
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Alignment = taCenter
      Header.Caption = 'Dni'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 1
      PlaceholderText = 'Text Text'
      Position = 1
      Width = 70
    end
    object NxTextColumn66: TNxTextColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Alignment = taCenter
      Header.Caption = 'Nombres'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 2
      PlaceholderText = 'Text Text'
      Position = 2
      Width = 220
    end
    object colUsuariosTamizaje: TNxCheckBoxColumn6
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Alignment = taCenter
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormulaKind = fkSum
      Footer.FormatMask = '0'
      Header.Alignment = taCenter
      Header.Caption = 'Tamizaje'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 3
      PlaceholderText = 'True'
      Position = 3
      InsertString = 'False'
    end
    object colUsuariosBucal: TNxCheckBoxColumn6
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Alignment = taCenter
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormulaKind = fkSum
      Footer.FormatMask = '0'
      Header.Alignment = taCenter
      Header.Caption = 'Bucal'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 4
      PlaceholderText = 'True'
      Position = 4
      InsertString = 'False'
    end
    object colUsuariosId: TNxNumberColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 5
      PlaceholderText = '1742.50'
      Position = 5
      Visible = False
      FormatMask = '0'
      InsertString = '0'
    end
    object colProfesionalId: TNxNumberColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 6
      PlaceholderText = '1742.50'
      Position = 6
      Visible = False
      FormatMask = '0'
      Precision = 0
      InsertString = '0'
    end
    object colProfeControlId: TNxNumberColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 7
      PlaceholderText = '1742.50'
      Position = 7
      Visible = False
      FormatMask = '0'
      Precision = 0
      InsertString = '0'
    end
  end
  object btnGuardar: TButton
    Left = 1228
    Top = 622
    Width = 117
    Height = 25
    Caption = 'Grabar Procesadas'
    TabOrder = 1
    OnClick = btnGuardarClick
  end
  object gridColegios: TNextGrid6
    Left = 13
    Top = 53
    Width = 468
    Height = 595
    ParentColor = False
    TabOrder = 2
    OnDblClick = gridColegiosDblClick
    OnKeyPress = gridColegiosKeyPress
    ActiveView = NxReportGridView61
    ActiveViewIndex = 0
    ScrollBars = [sbVertical]
    SecondClickEditing = True
    SelectFullRow = True
    object NxReportGridView61: TNxReportGridView6
      ShowFooter = True
    end
    object NxIncrementColumn61: TNxIncrementColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Alignment = taCenter
      Header.Caption = '#'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 0
      PlaceholderText = '1'
      Position = 0
      Width = 20
      InsertString = '-1'
    end
    object NxTextColumn61: TNxTextColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Alignment = taCenter
      Header.Caption = 'Codigo'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 1
      PlaceholderText = 'Text Text'
      Position = 1
    end
    object NxTextColumn62: TNxTextColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Alignment = taCenter
      Header.Caption = 'Descripcion'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 2
      PlaceholderText = 'Text Text'
      Position = 2
      Width = 250
    end
    object NxTextColumn63: TNxTextColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Alignment = taCenter
      Header.Caption = 'Nivel'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 3
      PlaceholderText = 'Text Text'
      Position = 3
    end
    object colColegiosId: TNxNumberColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 4
      PlaceholderText = '1742.50'
      Position = 4
      Visible = False
      FormatMask = '#,##0.00'
      InsertString = '0'
    end
  end
  object gridAcademicos: TNextGrid6
    Left = 495
    Top = 53
    Width = 346
    Height = 594
    ParentColor = False
    TabOrder = 3
    OnDblClick = gridAcademicosDblClick
    OnKeyPress = gridAcademicosKeyPress
    ActiveView = NxReportGridView62
    ActiveViewIndex = 0
    ScrollBars = [sbHorizontal, sbVertical]
    SelectFullRow = True
    object NxReportGridView62: TNxReportGridView6
      ShowFooter = True
    end
    object colAcademicosNivel: TNxTextColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Alignment = taCenter
      Header.Caption = 'Nivel'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 0
      PlaceholderText = 'Text Text'
      Position = 0
    end
    object colAcademicosGrado: TNxTextColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Alignment = taCenter
      Header.Caption = 'Grado'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 1
      PlaceholderText = 'Text Text'
      Position = 1
    end
    object colAcademicosSeccion: TNxTextColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Alignment = taCenter
      Header.Caption = 'Seccion'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 2
      PlaceholderText = 'Text Text'
      Position = 2
    end
    object colAcademicosTurno: TNxTextColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Alignment = taCenter
      Header.Caption = 'Turno'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 3
      PlaceholderText = 'Text Text'
      Position = 3
    end
    object colAcademicosId: TNxNumberColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 4
      PlaceholderText = '1742.50'
      Position = 4
      Visible = False
      FormatMask = '0'
      Precision = 0
      InsertString = '0'
    end
    object colAcademicosModular: TNxTextColumn6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Footer.Font.Charset = DEFAULT_CHARSET
      Footer.Font.Color = clWindowText
      Footer.Font.Height = -11
      Footer.Font.Name = 'Tahoma'
      Footer.Font.Style = []
      Footer.FormatMask = '#,##0.00'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 5
      PlaceholderText = 'Text Text'
      Position = 5
      Visible = False
    end
  end
  object cbProfesional: TJvDBLookupCombo
    Left = 948
    Top = 26
    Width = 389
    Height = 21
    DropDownCount = 20
    DisplayEmpty = 'Seleccione'
    LookupField = 'id'
    LookupDisplay = 'nombres;brigada;tipo;especialista'
    LookupSource = dsProfesional
    TabOrder = 4
  end
  object btnImprimir: TButton
    Left = 1134
    Top = 622
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    Enabled = False
    TabOrder = 5
    OnClick = btnImprimirClick
  end
  object Button1: TButton
    Left = 864
    Top = 622
    Width = 75
    Height = 25
    Caption = 'Ingresar'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 945
    Top = 622
    Width = 75
    Height = 25
    Caption = 'Digitadas'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 1040
    Top = 622
    Width = 75
    Height = 25
    Caption = 'Reportes'
    TabOrder = 8
    OnClick = Button3Click
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 1262
    Top = 318
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 1054
    Top = 342
  end
  object fdcolegios: TFDQuery
    Connection = DataModule3.FDConnection1
    SQL.Strings = (
      
        'SELECT id,codigo_modular,descripcion,nivel FROM colegios ORDER B' +
        'Y descripcion ASC')
    Left = 1222
    Top = 246
  end
  object dscolegios: TDataSource
    DataSet = fdcolegios
    Left = 1270
    Top = 246
  end
  object fdusuarios: TFDQuery
    Connection = DataModule3.FDConnection1
    SQL.Strings = (
      
        'SELECT usuarios.id,usuarios.dni,nombres,sexo,control.tamizaje,co' +
        'ntrol.bucal,profesional_id,control.profecontrol_id '
      
        'FROM usuarios LEFT JOIN control ON (usuarios.id=control.usuarios' +
        '_id) LEFT JOIN profecontrol'
      
        'ON (control.profecontrol_id=profecontrol.id) WHERE usuarios.nive' +
        'l=:nivel AND usuarios.grado=:grado AND usuarios.seccion=:seccion' +
        ' AND usuarios.turno=:turno '
      'AND modular=:modular'
      'ORDER BY nombres ASC;')
    Left = 910
    Top = 294
    ParamData = <
      item
        Name = 'NIVEL'
        ParamType = ptInput
      end
      item
        Name = 'GRADO'
        ParamType = ptInput
      end
      item
        Name = 'SECCION'
        ParamType = ptInput
      end
      item
        Name = 'TURNO'
        ParamType = ptInput
      end
      item
        Name = 'MODULAR'
        ParamType = ptInput
      end>
  end
  object dsgrado: TDataSource
    DataSet = fdusuarios
    Left = 1078
    Top = 422
  end
  object dsseccion: TDataSource
    DataSet = fdseccion
    Left = 1190
    Top = 446
  end
  object fdseccion: TFDQuery
    Connection = DataModule3.FDConnection1
    SQL.Strings = (
      'SELECT seccion FROM academicos GROUP BY seccion')
    Left = 1254
    Top = 398
  end
  object fdacademicos: TFDQuery
    Connection = DataModule3.FDConnection1
    SQL.Strings = (
      
        'SELECT academicos.id,academicos.nivel,grado,seccion,turno,codigo' +
        '_modular as modular FROM academicos,colegios'
      
        'WHERE academicos.colegios_id=:id AND academicos.colegios_id=cole' +
        'gios.id ORDER BY nivel,grado,seccion,turno ASC')
    Left = 672
    Top = 336
    ParamData = <
      item
        Name = 'ID'
        ParamType = ptInput
      end>
  end
  object fdGuardarUsuarios: TFDQuery
    Connection = DataModule3.FDConnection1
    SQL.Strings = (
      
        'INSERT INTO control (dni,tamizaje,bucal,usuarios_id,profecontrol' +
        '_id) VALUES (:dni,:tamizaje,:bucal,:usuarios_id,:profecontrol_id' +
        ')'
      
        'ON DUPLICATE KEY UPDATE tamizaje=:tamizaje, bucal=:bucal, profec' +
        'ontrol_id=:profecontrol_id;')
    Left = 934
    Top = 432
    ParamData = <
      item
        Name = 'DNI'
        ParamType = ptInput
      end
      item
        Name = 'TAMIZAJE'
        ParamType = ptInput
      end
      item
        Name = 'BUCAL'
        ParamType = ptInput
      end
      item
        Name = 'USUARIOS_ID'
        ParamType = ptInput
      end
      item
        Name = 'PROFECONTROL_ID'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object fdProfesional: TFDQuery
    Active = True
    Connection = DataModule3.FDConnection1
    SQL.Strings = (
      
        'SELECT id,brigada,tipo,dni,nombres,especialista FROM profesional' +
        ' ORDER BY nombres ASC,tipo DESC,brigada ASC')
    Left = 990
    Top = 216
    object fdProfesionalid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object fdProfesionalbrigada: TStringField
      DisplayWidth = 3
      FieldName = 'brigada'
      Origin = 'brigada'
      Required = True
      Size = 45
    end
    object fdProfesionaltipo: TStringField
      DisplayWidth = 8
      FieldName = 'tipo'
      Origin = 'tipo'
      Required = True
      Size = 45
    end
    object fdProfesionaldni: TStringField
      FieldName = 'dni'
      Origin = 'dni'
      Required = True
      FixedChar = True
      Size = 8
    end
    object fdProfesionalnombres: TStringField
      DisplayWidth = 30
      FieldName = 'nombres'
      Origin = 'nombres'
      Required = True
      Size = 100
    end
    object fdProfesionalespecialista: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'especialista'
      Origin = 'especialista'
      Size = 45
    end
  end
  object dsProfesional: TDataSource
    DataSet = fdProfesional
    Left = 1086
    Top = 216
  end
  object fdProfeControl: TFDQuery
    Connection = DataModule3.FDConnection1
    SQL.Strings = (
      
        'INSERT INTO profecontrol (profesional_id,date) VALUES (:profesio' +
        'nal_id,NOW())')
    Left = 720
    Top = 184
    ParamData = <
      item
        Name = 'PROFESIONAL_ID'
        ParamType = ptInput
      end>
  end
  object fdUltimoID: TFDQuery
    Connection = DataModule3.FDConnection1
    SQL.Strings = (
      'SELECT LAST_INSERT_ID() as ultimo;')
    Left = 828
    Top = 304
  end
  object fdObtenerProfesional: TFDQuery
    Connection = DataModule3.FDConnection1
    SQL.Strings = (
      'SELECT profesional_id '
      
        'FROM usuarios LEFT JOIN control ON (usuarios.id=control.usuarios' +
        '_id) LEFT JOIN profecontrol'
      'ON (control.profecontrol_id=profecontrol.id)'
      
        'WHERE usuarios.nivel=:nivel AND usuarios.grado=:grado AND usuari' +
        'os.seccion=:seccion AND usuarios.turno=:turno'
      
        'AND modular=:modular AND profesional_id IS NOT NULL GROUP BY pro' +
        'fesional_id '#10'ORDER BY nombres ASC;')
    Left = 828
    Top = 408
    ParamData = <
      item
        Name = 'NIVEL'
        ParamType = ptInput
      end
      item
        Name = 'GRADO'
        ParamType = ptInput
      end
      item
        Name = 'SECCION'
        ParamType = ptInput
      end
      item
        Name = 'TURNO'
        ParamType = ptInput
      end
      item
        Name = 'MODULAR'
        ParamType = ptInput
      end>
  end
  object fdEliminarUsuarios: TFDQuery
    Connection = DataModule3.FDConnection1
    SQL.Strings = (
      'DELETE FROM control WHERE usuarios_id=:usuarios_id')
    Left = 926
    Top = 376
    ParamData = <
      item
        Name = 'USUARIOS_ID'
        ParamType = ptInput
      end>
  end
  object fdDigitadasTamizaje: TFDQuery
    Connection = DataModule3.FDConnection1
    Left = 1368
    Top = 120
  end
  object fdDigitadasBucal: TFDQuery
    Connection = DataModule3.FDConnection1
    Left = 1360
    Top = 192
  end
end
