object FormListaPacientes1: TFormListaPacientes1
  Left = 253
  Top = 266
  Width = 1305
  Height = 634
  Caption = 'FormListaPacientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object listaPacientes1: TValueListEditor
    Left = 136
    Top = 120
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
    Left = 728
    Top = 456
    Width = 75
    Height = 25
    Caption = 'Volver'
    TabOrder = 1
    OnClick = VolverClick
  end
end
