object FNuevoUsuario: TFNuevoUsuario
  Left = 0
  Top = 0
  Caption = 'Nuevos Usuarios'
  ClientHeight = 641
  ClientWidth = 1372
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
    Left = 16
    Top = 31
    Width = 51
    Height = 16
    Caption = 'Colegio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtColegio: TLabel
    Left = 76
    Top = 28
    Width = 5
    Height = 18
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 421
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
    Left = 510
    Top = 32
    Width = 3
    Height = 13
  end
  object gridUsuarios: TNextGrid6
    Left = 803
    Top = 200
    Width = 550
    Height = 377
    ParentColor = False
    TabOrder = 0
    ActiveView = NxReportGridView63
    ActiveViewIndex = 0
    ScrollBars = [sbVertical]
    SelectFullRow = True
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
      Width = 300
    end
    object NxDateColumn61: TNxDateColumn6
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
      Header.Caption = 'Nac.'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 3
      PlaceholderText = '20/06/2016'
      Position = 3
      SortType = stAlphabetic
      InsertString = '30/12/1899'
    end
    object NxTextColumn64: TNxTextColumn6
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
      Header.Caption = 'Sexo'
      Header.Font.Charset = DEFAULT_CHARSET
      Header.Font.Color = clWindowText
      Header.Font.Height = -11
      Header.Font.Name = 'Tahoma'
      Header.Font.Style = []
      Index = 4
      PlaceholderText = 'Text Text'
      Position = 4
    end
    object NxTextColumn67: TNxTextColumn6
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
    object NxTextColumn68: TNxTextColumn6
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
      PlaceholderText = 'Text Text'
      Position = 6
      Visible = False
    end
    object NxTextColumn69: TNxTextColumn6
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
      PlaceholderText = 'Text Text'
      Position = 7
      Visible = False
    end
    object NxTextColumn610: TNxTextColumn6
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
      Index = 8
      PlaceholderText = 'Text Text'
      Position = 8
      Visible = False
    end
    object NxTextColumn611: TNxTextColumn6
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
      Index = 9
      PlaceholderText = 'Text Text'
      Position = 9
      Visible = False
    end
  end
  object btnGuardar: TButton
    Left = 1267
    Top = 583
    Width = 75
    Height = 25
    Caption = 'Grabar'
    TabOrder = 1
    OnClick = btnGuardarClick
  end
  object gridColegios: TNextGrid6
    Left = 16
    Top = 53
    Width = 385
    Height = 572
    ParentColor = False
    TabOrder = 2
    OnDblClick = gridColegiosDblClick
    OnKeyPress = gridColegiosKeyPress
    ActiveView = NxReportGridView61
    ActiveViewIndex = 0
    ScrollBars = [sbVertical]
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
    Left = 421
    Top = 53
    Width = 376
    Height = 572
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
  object grp1: TGroupBox
    Left = 803
    Top = 37
    Width = 550
    Height = 148
    Caption = 'Datos Usuario'
    TabOrder = 4
    object lbl1: TLabel
      Left = 32
      Top = 24
      Width = 15
      Height = 13
      Caption = 'Dni'
    end
    object lbl2: TLabel
      Left = 23
      Top = 64
      Width = 42
      Height = 13
      Caption = 'Nombres'
    end
    object lbl3: TLabel
      Left = 16
      Top = 104
      Width = 54
      Height = 13
      Caption = 'Fecha Nac.'
    end
    object lbl4: TLabel
      Left = 336
      Top = 104
      Width = 24
      Height = 13
      Caption = 'Sexo'
    end
    object txtDni: TEdit
      Left = 88
      Top = 21
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object txtNombres: TEdit
      Left = 88
      Top = 61
      Width = 449
      Height = 21
      TabOrder = 1
    end
    object cbSexo: TComboBox
      Left = 392
      Top = 101
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'M'
      Items.Strings = (
        'M'
        'F')
    end
    object Button1: TButton
      Left = 464
      Top = 19
      Width = 75
      Height = 25
      Caption = 'Agregar'
      TabOrder = 3
      OnClick = Button1Click
    end
    object txtFecha: TJvDateTimePicker
      Left = 88
      Top = 104
      Width = 145
      Height = 21
      Date = 42542.335180289350000000
      Time = 42542.335180289350000000
      TabOrder = 4
      DropDownDate = 42542.000000000000000000
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 1211
    Top = 302
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 1003
    Top = 326
  end
  object fdcolegios: TFDQuery
    Connection = DataModule3.FDConnection1
    SQL.Strings = (
      
        'SELECT id,codigo_modular,descripcion,nivel FROM colegios ORDER B' +
        'Y descripcion ASC')
    Left = 1171
    Top = 230
  end
  object dscolegios: TDataSource
    DataSet = fdcolegios
    Left = 1283
    Top = 230
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
    Left = 859
    Top = 278
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
    Left = 1027
    Top = 406
  end
  object dsseccion: TDataSource
    DataSet = fdseccion
    Left = 1139
    Top = 430
  end
  object fdseccion: TFDQuery
    Connection = DataModule3.FDConnection1
    SQL.Strings = (
      'SELECT seccion FROM academicos GROUP BY seccion')
    Left = 1203
    Top = 382
  end
  object fdacademicos: TFDQuery
    Connection = DataModule3.FDConnection1
    SQL.Strings = (
      
        'SELECT academicos.id,academicos.nivel,grado,seccion,turno,codigo' +
        '_modular as modular FROM academicos,colegios'
      
        'WHERE academicos.colegios_id=:id AND academicos.colegios_id=cole' +
        'gios.id ORDER BY nivel,grado,seccion,turno ASC')
    Left = 520
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
      
        'INSERT INTO usuarios (dni,nombres,fecha_nac,sexo,academicos_id,n' +
        'ivel,grado,seccion,turno,modular) VALUES (:dni,:nombres,:fecha_n' +
        'ac,:sexo,1,:nivel,:grado,:seccion,:turno,:modular)')
    Left = 883
    Top = 416
    ParamData = <
      item
        Name = 'DNI'
        ParamType = ptInput
      end
      item
        Name = 'NOMBRES'
        ParamType = ptInput
      end
      item
        Name = 'FECHA_NAC'
        ParamType = ptInput
      end
      item
        Name = 'SEXO'
        ParamType = ptInput
      end
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
  object fdProfesional: TFDQuery
    Connection = DataModule3.FDConnection1
    SQL.Strings = (
      
        'SELECT id,brigada,tipo,dni,nombres,especialista FROM profesional' +
        ' ORDER BY nombres ASC,tipo DESC,brigada ASC')
    Left = 939
    Top = 200
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
    Left = 1035
    Top = 200
  end
  object fdProfeControl: TFDQuery
    Connection = DataModule3.FDConnection1
    SQL.Strings = (
      
        'INSERT INTO profecontrol (profesional_id,date) VALUES (:profesio' +
        'nal_id,NOW())')
    Left = 568
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
    Left = 680
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
    Left = 680
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
    Left = 875
    Top = 360
    ParamData = <
      item
        Name = 'USUARIOS_ID'
        ParamType = ptInput
      end>
  end
end
