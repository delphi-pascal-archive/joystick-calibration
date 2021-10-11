object f_main: Tf_main
  Left = 277
  Top = 128
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Joystick Calibration par BEAUMONT Ch.'
  ClientHeight = 605
  ClientWidth = 404
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 17
  object Joystick: TImage
    Left = 21
    Top = 0
    Width = 367
    Height = 275
  end
  object JoyR: TShape
    Left = 220
    Top = 199
    Width = 73
    Height = 57
    Brush.Color = clBlack
    Shape = stCircle
  end
  object JoyL: TShape
    Left = 115
    Top = 199
    Width = 73
    Height = 57
    Brush.Color = clBlack
    Shape = stCircle
  end
  object Btn1: TShape
    Left = 267
    Top = 131
    Width = 43
    Height = 32
    Brush.Color = clBlack
    Shape = stCircle
  end
  object Btn2: TShape
    Left = 302
    Top = 94
    Width = 43
    Height = 33
    Brush.Color = clBlack
    Shape = stCircle
  end
  object Btn3: TShape
    Left = 302
    Top = 163
    Width = 43
    Height = 33
    Brush.Color = clBlack
    Shape = stCircle
  end
  object Btn4: TShape
    Left = 335
    Top = 131
    Width = 43
    Height = 32
    Brush.Color = clBlack
    Shape = stCircle
  end
  object Btn5: TShape
    Left = 84
    Top = 38
    Width = 49
    Height = 16
    Brush.Color = clBlack
  end
  object Btn7: TShape
    Left = 276
    Top = 38
    Width = 48
    Height = 16
    Brush.Color = clBlack
  end
  object Btn6: TShape
    Left = 101
    Top = 18
    Width = 42
    Height = 15
    Brush.Color = clBlack
  end
  object Btn8: TShape
    Left = 267
    Top = 18
    Width = 42
    Height = 15
    Brush.Color = clBlack
  end
  object Btn9: TShape
    Left = 163
    Top = 135
    Width = 24
    Height = 10
    Brush.Color = clBlack
  end
  object Btn10: TShape
    Left = 221
    Top = 135
    Width = 24
    Height = 10
    Brush.Color = clBlack
  end
  object Up: TShape
    Left = 76
    Top = 115
    Width = 19
    Height = 20
    Brush.Color = clBlack
  end
  object Right: TShape
    Left = 98
    Top = 136
    Width = 20
    Height = 20
    Brush.Color = clBlack
  end
  object Down: TShape
    Left = 76
    Top = 158
    Width = 19
    Height = 20
    Brush.Color = clBlack
  end
  object Left: TShape
    Left = 52
    Top = 137
    Width = 20
    Height = 20
    Brush.Color = clBlack
  end
  object Center: TShape
    Left = 76
    Top = 136
    Width = 19
    Height = 20
    Brush.Color = clBlack
  end
  object JoyState: TPanel
    Left = 3
    Top = 282
    Width = 396
    Height = 54
    BevelOuter = bvLowered
    TabOrder = 0
  end
  object StructJoyInfoEx1: TPanel
    Left = 3
    Top = 345
    Width = 147
    Height = 253
    BevelInner = bvLowered
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 1
    object LabSize1: TLabel
      Left = 7
      Top = 10
      Width = 54
      Height = 18
      Caption = 'dwSize'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabFlags1: TLabel
      Left = 7
      Top = 31
      Width = 62
      Height = 18
      Caption = 'dwFlags'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabXpos1: TLabel
      Left = 7
      Top = 52
      Width = 58
      Height = 18
      Caption = 'dwXpos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabYpos1: TLabel
      Left = 7
      Top = 73
      Width = 59
      Height = 18
      Caption = 'dwYpos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabZpos1: TLabel
      Left = 7
      Top = 94
      Width = 57
      Height = 18
      Caption = 'dwZpos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabRpos1: TLabel
      Left = 7
      Top = 115
      Width = 59
      Height = 18
      Caption = 'dwRpos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabUpos1: TLabel
      Left = 7
      Top = 136
      Width = 59
      Height = 18
      Caption = 'dwUpos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabVpos1: TLabel
      Left = 7
      Top = 157
      Width = 58
      Height = 18
      Caption = 'dwVpos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabButtons1: TLabel
      Left = 7
      Top = 178
      Width = 79
      Height = 18
      Caption = 'dwButtons'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabButtonNumber1: TLabel
      Left = 7
      Top = 199
      Width = 130
      Height = 18
      Caption = 'dwButtonNumber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LabPov1: TLabel
      Left = 7
      Top = 220
      Width = 54
      Height = 18
      Caption = 'dwPOV'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object StructJoyInfoEx2: TPanel
    Left = 157
    Top = 345
    Width = 242
    Height = 253
    BevelInner = bvLowered
    BevelOuter = bvLowered
    TabOrder = 2
    object LabSize2: TLabel
      Left = 10
      Top = 10
      Width = 53
      Height = 17
      Caption = 'LabSize2'
    end
    object LabFlags2: TLabel
      Left = 10
      Top = 31
      Width = 60
      Height = 17
      Caption = 'LabFlags2'
    end
    object LabXpos2: TLabel
      Left = 10
      Top = 52
      Width = 60
      Height = 17
      Caption = 'LabXpos2'
    end
    object LabYpos2: TLabel
      Left = 10
      Top = 73
      Width = 60
      Height = 17
      Caption = 'LabYpos2'
    end
    object LabZpos2: TLabel
      Left = 10
      Top = 94
      Width = 60
      Height = 17
      Caption = 'LabZpos2'
    end
    object LabRpos2: TLabel
      Left = 10
      Top = 115
      Width = 61
      Height = 17
      Caption = 'LabRpos2'
    end
    object LabUpos2: TLabel
      Left = 10
      Top = 136
      Width = 61
      Height = 17
      Caption = 'LabUpos2'
    end
    object LabVpos2: TLabel
      Left = 10
      Top = 157
      Width = 60
      Height = 17
      Caption = 'LabVpos2'
    end
    object LabButtons2: TLabel
      Left = 10
      Top = 178
      Width = 78
      Height = 17
      Caption = 'LabButtons2'
    end
    object LabButtonNumber2: TLabel
      Left = 10
      Top = 199
      Width = 121
      Height = 17
      Caption = 'LabButtonNumber2'
    end
    object LabPov2: TLabel
      Left = 10
      Top = 220
      Width = 54
      Height = 17
      Caption = 'LabPov2'
    end
  end
  object Timer1: TTimer
    Interval = 10
    OnTimer = Timer1Timer
    Left = 40
    Top = 8
  end
end
