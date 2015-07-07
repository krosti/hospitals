object FormListaPacientes1: TFormListaPacientes1
  Left = 217
  Top = 259
  Width = 906
  Height = 439
  Caption = 'FormListaPacientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object listaPacientes1: TValueListEditor
    Left = 16
    Top = 24
    Width = 865
    Height = 329
    TabOrder = 0
    TitleCaptions.Strings = (
      'Nro Paciente'
      'Nombre'
      'Apellido'
      'DNI')
    ColWidths = (
      150
      709)
  end
  object Volver: TBitBtn
    Left = 800
    Top = 360
    Width = 75
    Height = 25
    Caption = 'Volver'
    TabOrder = 2
    OnClick = VolverClick
  end
  object btn1: TButton
    Left = 16
    Top = 360
    Width = 113
    Height = 25
    Cursor = crUpArrow
    Caption = 'Actualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btn1Click
  end
end
