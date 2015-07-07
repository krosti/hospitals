object FInternacion: TFInternacion
  Left = 468
  Top = 205
  Width = 740
  Height = 521
  Caption = 'Registrar Internacion'
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
    Left = 264
    Top = 8
    Width = 198
    Height = 16
    Caption = 'Registro de Nueva Internaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 40
    Width = 61
    Height = 13
    Caption = 'Fecha Inicio:'
  end
  object Label4: TLabel
    Left = 16
    Top = 72
    Width = 90
    Height = 13
    Caption = 'Fecha Finalizaci'#243'n:'
  end
  object Button1: TButton
    Left = 552
    Top = 72
    Width = 161
    Height = 25
    Caption = 'Registrar Nuevo Paciente'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 440
    Width = 177
    Height = 25
    Caption = 'Registrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 560
    Top = 440
    Width = 153
    Height = 25
    Caption = 'Volver'
    TabOrder = 15
    OnClick = Button3Click
  end
  object GroupBox1: TGroupBox
    Left = 264
    Top = 208
    Width = 249
    Height = 217
    Caption = 'Acompa'#241'antes'
    TabOrder = 8
    Visible = False
    object Label5: TLabel
      Left = 8
      Top = 32
      Width = 109
      Height = 13
      Caption = 'DNI 1er acompa'#241'ante:'
    end
    object Label6: TLabel
      Left = 8
      Top = 56
      Width = 41
      Height = 13
      Caption = 'Apellido:'
    end
    object Label7: TLabel
      Left = 8
      Top = 80
      Width = 41
      Height = 13
      Caption = 'Nombre:'
    end
    object Label8: TLabel
      Left = 8
      Top = 136
      Width = 111
      Height = 13
      Caption = 'DNI 2do acompa'#241'ante:'
    end
    object Label9: TLabel
      Left = 8
      Top = 160
      Width = 41
      Height = 13
      Caption = 'Apellido:'
    end
    object Label10: TLabel
      Left = 8
      Top = 184
      Width = 41
      Height = 13
      Caption = 'Nombre:'
    end
    object Edit4: TEdit
      Left = 128
      Top = 24
      Width = 113
      Height = 21
      TabOrder = 0
    end
    object Edit5: TEdit
      Left = 128
      Top = 48
      Width = 113
      Height = 21
      TabOrder = 1
    end
    object Edit6: TEdit
      Left = 128
      Top = 72
      Width = 113
      Height = 21
      TabOrder = 2
    end
    object Edit7: TEdit
      Left = 128
      Top = 176
      Width = 113
      Height = 21
      TabOrder = 5
    end
    object Edit8: TEdit
      Left = 128
      Top = 152
      Width = 113
      Height = 21
      TabOrder = 4
    end
    object Edit9: TEdit
      Left = 128
      Top = 128
      Width = 113
      Height = 21
      TabOrder = 3
    end
  end
  object GroupBox2: TGroupBox
    Left = 552
    Top = 112
    Width = 161
    Height = 313
    Caption = 'Nuevo Paciente'
    Color = clCream
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    TabOrder = 5
    Visible = False
    object Label11: TLabel
      Left = 8
      Top = 112
      Width = 41
      Height = 13
      Caption = 'Nombre:'
    end
    object Label12: TLabel
      Left = 8
      Top = 136
      Width = 41
      Height = 13
      Caption = 'Apellido:'
    end
    object Label13: TLabel
      Left = 8
      Top = 160
      Width = 22
      Height = 13
      Caption = 'DNI:'
    end
    object Label14: TLabel
      Left = 8
      Top = 184
      Width = 58
      Height = 13
      Caption = 'Fecha Nac.:'
    end
    object Label15: TLabel
      Left = 96
      Top = 128
      Width = 6
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 96
      Top = 240
      Width = 5
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit10: TEdit
      Left = 72
      Top = 112
      Width = 81
      Height = 21
      TabOrder = 4
    end
    object Edit11: TEdit
      Left = 72
      Top = 136
      Width = 81
      Height = 21
      TabOrder = 5
    end
    object Edit12: TEdit
      Left = 72
      Top = 160
      Width = 81
      Height = 21
      TabOrder = 6
    end
    object Button4: TButton
      Left = 8
      Top = 280
      Width = 89
      Height = 25
      Caption = 'Cargar Paciente'
      TabOrder = 9
      OnClick = Button4Click
    end
    object Button6: TButton
      Left = 8
      Top = 240
      Width = 73
      Height = 25
      Caption = 'Nro Paciente: '
      TabOrder = 8
      OnClick = Button6Click
    end
    object Button8: TButton
      Left = 8
      Top = 32
      Width = 65
      Height = 25
      Caption = 'Actualizar OS'
      TabOrder = 0
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 8
      Top = 64
      Width = 65
      Height = 25
      Caption = 'Categor'#237'a'
      TabOrder = 2
      Visible = False
      OnClick = Button9Click
    end
    object ComboBox2: TComboBox
      Left = 80
      Top = 32
      Width = 73
      Height = 21
      ItemHeight = 13
      TabOrder = 1
      OnChange = ComboBox2Change
    end
    object ComboBox3: TComboBox
      Left = 80
      Top = 64
      Width = 73
      Height = 21
      ItemHeight = 13
      TabOrder = 3
    end
    object MaskEdit3: TMaskEdit
      Left = 72
      Top = 184
      Width = 80
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 7
      Text = '  /  /    '
    end
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 328
    Width = 217
    Height = 49
    Caption = 'Sala Comun'
    TabOrder = 10
    Visible = False
    object CheckBox2: TCheckBox
      Left = 8
      Top = 24
      Width = 129
      Height = 17
      Caption = 'Uso de TV'
      TabOrder = 0
    end
  end
  object GroupBox4: TGroupBox
    Left = 16
    Top = 328
    Width = 233
    Height = 49
    Caption = 'Internaci'#243'n Com'#250'n'
    TabOrder = 11
    Visible = False
    object CheckBox1: TCheckBox
      Left = 8
      Top = 24
      Width = 169
      Height = 17
      Caption = 'Registrar Acompa'#241'antes'
      TabOrder = 0
      OnClick = CheckBox1Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 16
    Top = 240
    Width = 233
    Height = 81
    Caption = 'Tipo de Internaci'#243'n'
    TabOrder = 9
    object ComboBox1: TComboBox
      Left = 8
      Top = 20
      Width = 217
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'Opciones'
      Items.Strings = (
        'Sala Comun'
        'Internacion Comun'
        'Terapia Intermedia'
        'Terapia Intensiva')
    end
    object Button7: TButton
      Left = 152
      Top = 48
      Width = 73
      Height = 25
      Caption = 'Ok'
      TabOrder = 1
      OnClick = Button7Click
    end
  end
  object GroupBox6: TGroupBox
    Left = 264
    Top = 112
    Width = 249
    Height = 81
    Caption = 'M'#233'dico'
    TabOrder = 4
    object Button10: TButton
      Left = 160
      Top = 8
      Width = 81
      Height = 25
      Caption = 'Ver Disponibles'
      TabOrder = 0
      OnClick = Button10Click
    end
    object ComboBox4: TComboBox
      Left = 8
      Top = 40
      Width = 233
      Height = 21
      ItemHeight = 13
      TabOrder = 1
    end
  end
  object MaskEdit1: TMaskEdit
    Left = 112
    Top = 40
    Width = 120
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 0
    Text = '  /  /    '
  end
  object MaskEdit2: TMaskEdit
    Left = 112
    Top = 72
    Width = 120
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object GroupBox7: TGroupBox
    Left = 16
    Top = 128
    Width = 233
    Height = 81
    Caption = 'Paciente por Apellido'
    TabOrder = 6
    Visible = False
    object Edit2: TEdit
      Left = 8
      Top = 20
      Width = 137
      Height = 21
      TabOrder = 1
    end
    object Button11: TButton
      Left = 160
      Top = 16
      Width = 65
      Height = 25
      Caption = 'Consultar'
      TabOrder = 0
      OnClick = Button11Click
    end
    object ComboBox5: TComboBox
      Left = 8
      Top = 48
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = '------------------------'
    end
  end
  object Button5: TButton
    Left = 16
    Top = 392
    Width = 161
    Height = 33
    Caption = 'Obtener Nro Internacion:'
    TabOrder = 13
    OnClick = Button5Click
  end
  object GroupBox8: TGroupBox
    Left = 184
    Top = 384
    Width = 65
    Height = 41
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 12
    object Label17: TLabel
      Left = 11
      Top = 10
      Width = 6
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox9: TGroupBox
    Left = 16
    Top = 136
    Width = 233
    Height = 57
    TabOrder = 7
    object Label2: TLabel
      Left = 8
      Top = 20
      Width = 84
      Height = 13
      Caption = 'Nro. de Paciente:'
    end
    object Edit1: TEdit
      Left = 96
      Top = 20
      Width = 121
      Height = 21
      TabOrder = 0
    end
  end
  object CheckBox3: TCheckBox
    Left = 16
    Top = 104
    Width = 153
    Height = 17
    Caption = 'Buscar paciente por Apellido'
    TabOrder = 3
    OnClick = CheckBox3Click
  end
  object lgnfrmdptr1: TLoginFormAdapter
    Left = 488
    Top = 200
    object TAdapterDefaultActions
    end
    object TAdapterDefaultFields
    end
  end
  object mdxcptnhndlr1: TMadExceptionHandler
    Left = 688
    Top = 8
  end
end
