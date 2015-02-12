object AsigUrgencias: TAsigUrgencias
  Left = 203
  Top = 165
  Width = 693
  Height = 403
  Caption = 'AsigUrgencias'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 24
    Width = 117
    Height = 16
    Caption = 'Asignar Urgencias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 360
    Top = 72
    Width = 297
    Height = 193
    Caption = 'Asignaciones Actuales'
    TabOrder = 0
    object ListBox1: TListBox
      Left = 24
      Top = 40
      Width = 249
      Height = 129
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 32
    Top = 72
    Width = 297
    Height = 193
    Caption = 'Nueva Urgencia'
    TabOrder = 1
    object Label3: TLabel
      Left = 40
      Top = 112
      Width = 59
      Height = 13
      Caption = 'Nro de Sala:'
    end
    object Label2: TLabel
      Left = 40
      Top = 88
      Width = 37
      Height = 13
      Caption = 'M'#233'dico:'
    end
    object Button1: TButton
      Left = 32
      Top = 144
      Width = 65
      Height = 25
      Caption = 'Cargar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object ComboBox1: TComboBox
      Left = 112
      Top = 80
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      Text = '------------------------'
    end
    object ComboBox2: TComboBox
      Left = 112
      Top = 112
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = '------------------------'
    end
    object Button3: TButton
      Left = 176
      Top = 16
      Width = 105
      Height = 25
      Caption = 'Actualizar Datos'
      TabOrder = 3
      OnClick = Button3Click
    end
  end
  object Button2: TButton
    Left = 544
    Top = 320
    Width = 113
    Height = 33
    Caption = 'Salir'
    TabOrder = 2
    OnClick = Button2Click
  end
end
