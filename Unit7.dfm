object FDatos: TFDatos
  Left = 216
  Top = 145
  Width = 1250
  Height = 709
  Caption = 'Cargar datos iniciales'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 153
    Height = 16
    Caption = 'Carga de datos iniciales'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 840
    Top = 16
    Width = 66
    Height = 13
    Caption = 'Fecha Actual:'
  end
  object FechaActualLABEL: TLabel
    Left = 915
    Top = 16
    Width = 3
    Height = 13
    Color = clHighlight
    ParentColor = False
  end
  object GroupBox1: TGroupBox
    Left = 176
    Top = 488
    Width = 177
    Height = 161
    Caption = 'Salas Comunes'
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 21
      Height = 13
      Caption = 'Nro:'
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 54
      Height = 13
      Caption = 'Enfermera:'
    end
    object Label4: TLabel
      Left = 8
      Top = 80
      Width = 39
      Height = 13
      Caption = 'Auxiliar:'
    end
    object Edit1: TEdit
      Left = 80
      Top = 24
      Width = 81
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 80
      Top = 48
      Width = 81
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 80
      Top = 72
      Width = 81
      Height = 21
      TabOrder = 2
    end
    object Button1: TButton
      Left = 8
      Top = 120
      Width = 65
      Height = 25
      Caption = 'Cargar'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 368
    Top = 488
    Width = 385
    Height = 161
    Caption = 'Salas Internaci'#243'n'
    TabOrder = 1
    object Label5: TLabel
      Left = 8
      Top = 32
      Width = 21
      Height = 13
      Caption = 'Nro:'
    end
    object Label6: TLabel
      Left = 8
      Top = 56
      Width = 54
      Height = 13
      Caption = 'Enfermera:'
    end
    object Label7: TLabel
      Left = 208
      Top = 32
      Width = 39
      Height = 13
      Caption = 'Auxiliar:'
    end
    object Label8: TLabel
      Left = 8
      Top = 80
      Width = 54
      Height = 13
      Caption = 'Enfermera:'
    end
    object Label55: TLabel
      Left = 208
      Top = 56
      Width = 70
      Height = 13
      Caption = 'Cant. Camas.:'
    end
    object Label9: TLabel
      Left = 8
      Top = 120
      Width = 62
      Height = 13
      Caption = 'Tipo de Sala:'
    end
    object Edit4: TEdit
      Left = 80
      Top = 24
      Width = 81
      Height = 21
      TabOrder = 0
    end
    object Edit5: TEdit
      Left = 80
      Top = 48
      Width = 81
      Height = 21
      TabOrder = 1
    end
    object Edit6: TEdit
      Left = 280
      Top = 24
      Width = 81
      Height = 21
      TabOrder = 2
    end
    object Button2: TButton
      Left = 296
      Top = 120
      Width = 65
      Height = 25
      Caption = 'Cargar'
      TabOrder = 3
      OnClick = Button2Click
    end
    object Edit7: TEdit
      Left = 80
      Top = 72
      Width = 81
      Height = 21
      TabOrder = 4
    end
    object Edit19: TEdit
      Left = 280
      Top = 48
      Width = 81
      Height = 21
      TabOrder = 5
    end
    object ComboBox1: TComboBox
      Left = 80
      Top = 120
      Width = 121
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Items.Strings = (
        'Internacion Comun'
        'Terapia Intermedia'
        'Terapia Intensiva')
    end
  end
  object GroupBox5: TGroupBox
    Left = 176
    Top = 80
    Width = 177
    Height = 225
    Caption = 'M'#233'dicos'
    TabOrder = 2
    object Label17: TLabel
      Left = 8
      Top = 32
      Width = 41
      Height = 13
      Caption = 'Nombre:'
    end
    object Label18: TLabel
      Left = 8
      Top = 56
      Width = 41
      Height = 13
      Caption = 'Apellido:'
    end
    object Label19: TLabel
      Left = 8
      Top = 80
      Width = 22
      Height = 13
      Caption = 'DNI:'
    end
    object Label20: TLabel
      Left = 8
      Top = 104
      Width = 58
      Height = 13
      Caption = 'Fecha Nac.:'
    end
    object Label21: TLabel
      Left = 8
      Top = 128
      Width = 36
      Height = 13
      Caption = 'Legajo:'
    end
    object Label22: TLabel
      Left = 8
      Top = 152
      Width = 47
      Height = 13
      Caption = 'Matr'#237'cula:'
    end
    object Edit16: TEdit
      Left = 80
      Top = 24
      Width = 73
      Height = 21
      TabOrder = 0
    end
    object Edit17: TEdit
      Left = 80
      Top = 48
      Width = 73
      Height = 21
      TabOrder = 1
    end
    object Edit18: TEdit
      Left = 80
      Top = 72
      Width = 73
      Height = 21
      TabOrder = 2
    end
    object Edit20: TEdit
      Left = 80
      Top = 120
      Width = 73
      Height = 21
      TabOrder = 3
    end
    object Edit21: TEdit
      Left = 80
      Top = 144
      Width = 73
      Height = 21
      TabOrder = 4
    end
    object Button5: TButton
      Left = 8
      Top = 184
      Width = 73
      Height = 25
      Caption = 'Cargar'
      TabOrder = 5
      OnClick = Button5Click
    end
    object MaskEdit1: TMaskEdit
      Left = 80
      Top = 96
      Width = 72
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 6
      Text = '  /  /    '
    end
  end
  object GroupBox6: TGroupBox
    Left = 368
    Top = 80
    Width = 185
    Height = 225
    Caption = 'Enfermeras'
    TabOrder = 3
    object Label23: TLabel
      Left = 8
      Top = 152
      Width = 62
      Height = 13
      Caption = 'Nro Enferm.:'
    end
    object Label24: TLabel
      Left = 8
      Top = 128
      Width = 36
      Height = 13
      Caption = 'Legajo:'
    end
    object Label25: TLabel
      Left = 8
      Top = 104
      Width = 58
      Height = 13
      Caption = 'Fecha Nac.:'
    end
    object Label26: TLabel
      Left = 8
      Top = 80
      Width = 22
      Height = 13
      Caption = 'DNI:'
    end
    object Label27: TLabel
      Left = 8
      Top = 56
      Width = 41
      Height = 13
      Caption = 'Apellido:'
    end
    object Label28: TLabel
      Left = 8
      Top = 32
      Width = 41
      Height = 13
      Caption = 'Nombre:'
    end
    object Button6: TButton
      Left = 8
      Top = 184
      Width = 73
      Height = 25
      Caption = 'Cargar'
      TabOrder = 0
      OnClick = Button6Click
    end
    object Edit22: TEdit
      Left = 80
      Top = 24
      Width = 73
      Height = 21
      TabOrder = 1
    end
    object Edit23: TEdit
      Left = 80
      Top = 48
      Width = 73
      Height = 21
      TabOrder = 2
    end
    object Edit25: TEdit
      Left = 80
      Top = 72
      Width = 73
      Height = 21
      TabOrder = 3
    end
    object Edit26: TEdit
      Left = 80
      Top = 120
      Width = 73
      Height = 21
      TabOrder = 4
    end
    object Edit27: TEdit
      Left = 80
      Top = 144
      Width = 73
      Height = 21
      TabOrder = 5
    end
    object MaskEdit2: TMaskEdit
      Left = 80
      Top = 96
      Width = 72
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 6
      Text = '  /  /    '
    end
  end
  object GroupBox7: TGroupBox
    Left = 568
    Top = 80
    Width = 185
    Height = 225
    Caption = 'Auxiliares'
    TabOrder = 4
    object Label29: TLabel
      Left = 8
      Top = 152
      Width = 51
      Height = 13
      Caption = 'Nro. Aux.:'
    end
    object Label30: TLabel
      Left = 8
      Top = 128
      Width = 36
      Height = 13
      Caption = 'Legajo:'
    end
    object Label31: TLabel
      Left = 8
      Top = 104
      Width = 58
      Height = 13
      Caption = 'Fecha Nac.:'
    end
    object Label32: TLabel
      Left = 8
      Top = 80
      Width = 22
      Height = 13
      Caption = 'DNI:'
    end
    object Label33: TLabel
      Left = 8
      Top = 56
      Width = 41
      Height = 13
      Caption = 'Apellido:'
    end
    object Label34: TLabel
      Left = 8
      Top = 32
      Width = 41
      Height = 13
      Caption = 'Nombre:'
    end
    object Button7: TButton
      Left = 8
      Top = 184
      Width = 73
      Height = 25
      Caption = 'Cargar'
      TabOrder = 0
      OnClick = Button7Click
    end
    object Edit28: TEdit
      Left = 80
      Top = 144
      Width = 73
      Height = 21
      TabOrder = 1
    end
    object Edit29: TEdit
      Left = 80
      Top = 120
      Width = 73
      Height = 21
      TabOrder = 2
    end
    object Edit31: TEdit
      Left = 80
      Top = 72
      Width = 73
      Height = 21
      TabOrder = 3
    end
    object Edit32: TEdit
      Left = 80
      Top = 48
      Width = 73
      Height = 21
      TabOrder = 4
    end
    object Edit33: TEdit
      Left = 80
      Top = 24
      Width = 73
      Height = 21
      TabOrder = 5
    end
    object MaskEdit3: TMaskEdit
      Left = 80
      Top = 96
      Width = 72
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 6
      Text = '  /  /    '
    end
  end
  object GroupBox8: TGroupBox
    Left = 768
    Top = 80
    Width = 185
    Height = 225
    Caption = 'Secretarias'
    TabOrder = 5
    object Label35: TLabel
      Left = 8
      Top = 152
      Width = 49
      Height = 13
      Caption = 'Nro. Sec.:'
    end
    object Label36: TLabel
      Left = 8
      Top = 128
      Width = 36
      Height = 13
      Caption = 'Legajo:'
    end
    object Label37: TLabel
      Left = 8
      Top = 104
      Width = 58
      Height = 13
      Caption = 'Fecha Nac.:'
    end
    object Label38: TLabel
      Left = 8
      Top = 80
      Width = 22
      Height = 13
      Caption = 'DNI:'
    end
    object Label39: TLabel
      Left = 8
      Top = 56
      Width = 41
      Height = 13
      Caption = 'Apellido:'
    end
    object Label40: TLabel
      Left = 8
      Top = 32
      Width = 41
      Height = 13
      Caption = 'Nombre:'
    end
    object Button8: TButton
      Left = 8
      Top = 184
      Width = 73
      Height = 25
      Caption = 'Cargar'
      TabOrder = 0
      OnClick = Button8Click
    end
    object Edit34: TEdit
      Left = 80
      Top = 144
      Width = 73
      Height = 21
      TabOrder = 1
    end
    object Edit35: TEdit
      Left = 80
      Top = 120
      Width = 73
      Height = 21
      TabOrder = 2
    end
    object Edit37: TEdit
      Left = 80
      Top = 72
      Width = 73
      Height = 21
      TabOrder = 3
    end
    object Edit39: TEdit
      Left = 80
      Top = 24
      Width = 73
      Height = 21
      TabOrder = 4
    end
    object MaskEdit4: TMaskEdit
      Left = 80
      Top = 96
      Width = 72
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 5
      Text = '  /  /    '
    end
    object Edit38: TEdit
      Left = 80
      Top = 48
      Width = 73
      Height = 21
      TabOrder = 6
    end
  end
  object GroupBox9: TGroupBox
    Left = 176
    Top = 312
    Width = 177
    Height = 161
    Caption = 'Obras Sociales'
    TabOrder = 6
    object Label41: TLabel
      Left = 8
      Top = 56
      Width = 65
      Height = 13
      Caption = 'Identificador:'
    end
    object Label42: TLabel
      Left = 8
      Top = 80
      Width = 41
      Height = 13
      Caption = 'Nombre:'
    end
    object Button9: TButton
      Left = 8
      Top = 120
      Width = 65
      Height = 25
      Caption = 'Cargar'
      TabOrder = 0
      OnClick = Button9Click
    end
    object Edit40: TEdit
      Left = 96
      Top = 56
      Width = 65
      Height = 21
      TabOrder = 1
    end
    object Edit41: TEdit
      Left = 96
      Top = 80
      Width = 65
      Height = 21
      TabOrder = 2
    end
  end
  object GroupBox10: TGroupBox
    Left = 368
    Top = 312
    Width = 185
    Height = 161
    Caption = 'Categor'#237'as'
    TabOrder = 7
    object Label43: TLabel
      Left = 16
      Top = 24
      Width = 65
      Height = 13
      Caption = 'Identificador:'
    end
    object Label44: TLabel
      Left = 24
      Top = 48
      Width = 58
      Height = 13
      Caption = 'Descripci'#243'n:'
    end
    object Label45: TLabel
      Left = 24
      Top = 72
      Width = 58
      Height = 13
      Caption = 'Obra Social:'
    end
    object Label46: TLabel
      Left = 24
      Top = 96
      Width = 55
      Height = 13
      Caption = 'Descuento:'
    end
    object Label47: TLabel
      Left = 168
      Top = 96
      Width = 11
      Height = 13
      Caption = '%'
    end
    object Edit42: TEdit
      Left = 88
      Top = 24
      Width = 73
      Height = 21
      TabOrder = 0
    end
    object Edit43: TEdit
      Left = 88
      Top = 48
      Width = 73
      Height = 21
      TabOrder = 1
    end
    object Edit44: TEdit
      Left = 112
      Top = 136
      Width = 73
      Height = 21
      TabOrder = 2
    end
    object Edit45: TEdit
      Left = 88
      Top = 96
      Width = 73
      Height = 21
      TabOrder = 3
    end
    object Button11: TButton
      Left = 8
      Top = 120
      Width = 73
      Height = 25
      Caption = 'Cargar'
      TabOrder = 4
      OnClick = Button11Click
    end
    object ComboOS: TComboBox
      Left = 88
      Top = 72
      Width = 73
      Height = 21
      ItemHeight = 13
      TabOrder = 5
    end
  end
  object GroupBox11: TGroupBox
    Left = 568
    Top = 312
    Width = 185
    Height = 161
    Caption = 'Consultorios'
    TabOrder = 8
    object Label48: TLabel
      Left = 16
      Top = 92
      Width = 53
      Height = 13
      Caption = 'Secretaria:'
    end
    object Label49: TLabel
      Left = 16
      Top = 68
      Width = 37
      Height = 13
      Caption = 'M'#233'dico:'
    end
    object Label50: TLabel
      Left = 16
      Top = 44
      Width = 62
      Height = 13
      Caption = 'Especialidad:'
    end
    object Label51: TLabel
      Left = 16
      Top = 24
      Width = 21
      Height = 13
      Caption = 'Nro:'
    end
    object Edit46: TEdit
      Left = 88
      Top = 16
      Width = 73
      Height = 21
      TabOrder = 0
    end
    object Edit47: TEdit
      Left = 88
      Top = 36
      Width = 73
      Height = 21
      TabOrder = 1
    end
    object Edit48: TEdit
      Left = 88
      Top = 60
      Width = 73
      Height = 21
      TabOrder = 2
    end
    object Edit49: TEdit
      Left = 88
      Top = 84
      Width = 73
      Height = 21
      TabOrder = 3
    end
    object Button10: TButton
      Left = 8
      Top = 120
      Width = 73
      Height = 25
      Caption = 'Cargar'
      TabOrder = 4
      OnClick = Button10Click
    end
  end
  object GroupBox12: TGroupBox
    Left = 768
    Top = 312
    Width = 185
    Height = 161
    Caption = 'Horarios'
    TabOrder = 9
    object Label52: TLabel
      Left = 16
      Top = 40
      Width = 21
      Height = 13
      Caption = 'Nro:'
    end
    object Label53: TLabel
      Left = 16
      Top = 56
      Width = 137
      Height = 13
      Caption = '(Horario fijos de media hora)'
    end
    object Label54: TLabel
      Left = 16
      Top = 96
      Width = 58
      Height = 13
      Caption = 'Consultorio:'
    end
    object Button12: TButton
      Left = 8
      Top = 120
      Width = 65
      Height = 25
      Caption = 'Cargar'
      TabOrder = 0
      OnClick = Button12Click
    end
    object Edit50: TEdit
      Left = 88
      Top = 32
      Width = 65
      Height = 21
      TabOrder = 1
    end
    object Edit51: TEdit
      Left = 88
      Top = 88
      Width = 73
      Height = 21
      TabOrder = 2
    end
  end
  object Button13: TButton
    Left = 8
    Top = 632
    Width = 161
    Height = 25
    Caption = 'Finalizar Carga'
    TabOrder = 10
    OnClick = Button13Click
  end
  object GroupBox3: TGroupBox
    Left = 424
    Top = 8
    Width = 257
    Height = 57
    Caption = 'Fecha'
    TabOrder = 11
    Visible = False
    object MaskEdit5: TMaskEdit
      Left = 8
      Top = 24
      Width = 104
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnChange = MaskEdit5Change
    end
    object Button3: TButton
      Left = 200
      Top = 24
      Width = 49
      Height = 17
      Caption = 'Cargar'
      Enabled = False
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 768
    Top = 488
    Width = 185
    Height = 161
    Caption = 'Precios por noche'
    TabOrder = 12
    object Label10: TLabel
      Left = 8
      Top = 24
      Width = 76
      Height = 13
      Caption = 'Salas Comunes:'
    end
    object Label11: TLabel
      Left = 8
      Top = 56
      Width = 68
      Height = 13
      Caption = 'Salas Terapia:'
    end
    object Edit8: TEdit
      Left = 96
      Top = 24
      Width = 65
      Height = 21
      TabOrder = 0
    end
    object Edit9: TEdit
      Left = 96
      Top = 56
      Width = 65
      Height = 21
      TabOrder = 1
    end
    object Button4: TButton
      Left = 8
      Top = 88
      Width = 65
      Height = 25
      Caption = 'Cargar'
      TabOrder = 2
      OnClick = Button4Click
    end
  end
end
