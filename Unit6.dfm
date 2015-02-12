object FConInter: TFConInter
  Left = 179
  Top = 165
  Width = 696
  Height = 480
  Caption = 'Consultar Internaci'#243'n'
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
    Left = 16
    Top = 32
    Width = 141
    Height = 16
    Caption = 'Consultar Internaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 568
    Top = 400
    Width = 105
    Height = 33
    Caption = 'Salir'
    TabOrder = 0
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 80
    Width = 297
    Height = 129
    TabOrder = 1
    object Label2: TLabel
      Left = 15
      Top = 56
      Width = 98
      Height = 13
      Caption = 'Nro. de Internaci'#243'n:'
    end
    object Label17: TLabel
      Left = 16
      Top = 24
      Width = 97
      Height = 13
      Caption = 'Tipo de Internaci'#243'n:'
    end
    object Edit1: TEdit
      Left = 160
      Top = 48
      Width = 113
      Height = 21
      TabOrder = 0
    end
    object Button2: TButton
      Left = 8
      Top = 88
      Width = 105
      Height = 25
      Caption = 'Ok'
      TabOrder = 1
      OnClick = Button2Click
    end
    object ComboBox2: TComboBox
      Left = 160
      Top = 24
      Width = 113
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Items.Strings = (
        'Sala Comun'
        'Internaci'#243'n Comun'
        'Terapia Intermedia'
        'Terapia Intensiva')
    end
  end
  object GroupBox2: TGroupBox
    Left = 320
    Top = 80
    Width = 201
    Height = 129
    Caption = 'Datos Internaci'#243'n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label3: TLabel
      Left = 8
      Top = 32
      Width = 45
      Height = 13
      Caption = 'Paciente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 128
      Top = 32
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 56
      Width = 24
      Height = 13
      Caption = 'Sala:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 128
      Top = 56
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 8
      Top = 80
      Width = 61
      Height = 13
      Caption = 'Fecha Inicio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 8
      Top = 104
      Width = 68
      Height = 13
      Caption = 'Fecha Final.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 128
      Top = 80
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 128
      Top = 104
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox3: TGroupBox
    Left = 528
    Top = 80
    Width = 153
    Height = 129
    Caption = 'Modificar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
    object Label12: TLabel
      Left = 8
      Top = 36
      Width = 139
      Height = 13
      Caption = 'Nueva Fecha de Finalizaci'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button3: TButton
      Left = 8
      Top = 88
      Width = 105
      Height = 25
      Caption = 'Actualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button3Click
    end
    object MaskEdit1: TMaskEdit
      Left = 8
      Top = 56
      Width = 96
      Height = 21
      EditMask = '!99/99/0000;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
  end
  object GroupBox4: TGroupBox
    Left = 16
    Top = 248
    Width = 297
    Height = 169
    Caption = 'Pago de Internaci'#243'n'
    TabOrder = 4
    Visible = False
    object Label6: TLabel
      Left = 16
      Top = 20
      Width = 98
      Height = 13
      Caption = '>Costo Internaci'#243'n:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label13: TLabel
      Left = 144
      Top = 20
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 16
      Top = 100
      Width = 82
      Height = 13
      Caption = 'M'#233'todo de Pago:'
    end
    object Label15: TLabel
      Left = 144
      Top = 44
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 16
      Top = 44
      Width = 120
      Height = 13
      Caption = '>Descuento Obra Social:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 16
      Top = 68
      Width = 66
      Height = 13
      Caption = '>Precio Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 144
      Top = 68
      Width = 3
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 144
      Top = 100
      Width = 89
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Efectivo'
        'Tarjeta')
    end
    object Button4: TButton
      Left = 8
      Top = 128
      Width = 113
      Height = 33
      Caption = 'Realizar Pago'
      TabOrder = 1
      OnClick = Button4Click
    end
  end
end
