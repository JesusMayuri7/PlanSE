object FMenu: TFMenu
  Left = 0
  Top = 0
  Caption = 'PLAN SALUD ESCOLAR - 2016'
  ClientHeight = 575
  ClientWidth = 1130
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 520
    Top = 224
    object Reportes1: TMenuItem
      Caption = 'Reportes'
      object Procesadas1: TMenuItem
        Caption = 'Procesadas'
        object amizaje1: TMenuItem
          Caption = 'Tamizaje'
          OnClick = amizaje1Click
        end
        object Bucal1: TMenuItem
          Caption = 'Bucal'
          OnClick = Bucal1Click
        end
        object otales2: TMenuItem
          Caption = 'Totales'
          OnClick = otales2Click
        end
      end
      object Digitadas1: TMenuItem
        Caption = 'Digitadas'
        object amizaje2: TMenuItem
          Caption = 'Tamizaje'
          OnClick = amizaje2Click
        end
        object Bucal2: TMenuItem
          Caption = 'Bucal'
          OnClick = Bucal2Click
        end
        object otales1: TMenuItem
          Caption = 'Totales'
          OnClick = otales1Click
        end
      end
    end
    object Procesar1: TMenuItem
      Caption = 'Fuas'
      object Procesar2: TMenuItem
        Caption = 'Procesar'
        OnClick = Procesar2Click
      end
      object Digitar1: TMenuItem
        Caption = 'Digitar'
        OnClick = Digitar1Click
      end
    end
    object Ingresar1: TMenuItem
      Caption = 'Ingresar'
      object Alumnos1: TMenuItem
        Caption = 'Alumnos'
        OnClick = Alumnos1Click
      end
    end
    object Salir1: TMenuItem
      Caption = 'Salir'
      OnClick = Salir1Click
    end
  end
end
