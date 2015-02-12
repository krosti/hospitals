object FConsultorios: TFConsultorios
  Left = 203
  Top = 165
  Width = 690
  Height = 480
  Caption = 'Reservar Consultorio'
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
    Left = 32
    Top = 32
    Width = 137
    Height = 16
    Caption = 'Reservar Consultorio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 96
    Width = 58
    Height = 13
    Caption = 'Consultorio:'
  end
  object Label4: TLabel
    Left = 368
    Top = 72
    Width = 48
    Height = 13
    Caption = 'Horarios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 552
    Top = 64
    Width = 70
    Height = 13
    Caption = 'Consultorios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 32
    Top = 216
    Width = 74
    Height = 13
    Caption = 'DNI Solicitante:'
  end
  object Label3: TLabel
    Left = 32
    Top = 128
    Width = 33
    Height = 13
    Caption = 'Fecha:'
  end
  object Button1: TButton
    Left = 56
    Top = 264
    Width = 97
    Height = 25
    Caption = 'Reservar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 528
    Top = 96
    Width = 121
    Height = 201
    ItemHeight = 13
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 120
    Top = 96
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = '----------------'
  end
  object ComboBox2: TComboBox
    Left = 120
    Top = 168
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = '----------------'
  end
  object Button2: TButton
    Left = 592
    Top = 400
    Width = 81
    Height = 33
    Caption = 'Salir'
    TabOrder = 4
    OnClick = Button2Click
  end
  object ListBox2: TListBox
    Left = 336
    Top = 96
    Width = 121
    Height = 201
    ItemHeight = 13
    Items.Strings = (
      '1. 8:00 a 8:30'
      '2. 8:30 a 9:00')
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 120
    Top = 208
    Width = 89
    Height = 21
    TabOrder = 6
  end
  object Button3: TButton
    Left = 536
    Top = 24
    Width = 97
    Height = 33
    Caption = 'Cargar Datos '
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 32
    Top = 168
    Width = 73
    Height = 25
    Caption = 'Horarios'
    TabOrder = 8
    OnClick = Button4Click
  end
  object MaskEdit1: TMaskEdit
    Left = 120
    Top = 128
    Width = 86
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 9
    Text = '  /  /    '
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 328
    Width = 441
    Height = 105
    Caption = 'Turnos Reservados'
    TabOrder = 10
    object ComboBox3: TComboBox
      Left = 16
      Top = 28
      Width = 89
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = '----------------'
    end
    object ListBox3: TListBox
      Left = 144
      Top = 24
      Width = 273
      Height = 65
      ItemHeight = 13
      TabOrder = 1
    end
    object Button5: TButton
      Left = 16
      Top = 64
      Width = 89
      Height = 25
      Caption = 'Consultar'
      TabOrder = 2
      OnClick = Button5Click
    end
  end
end
