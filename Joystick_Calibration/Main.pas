{===============================================================================
Code Source : BEAUMONT Christophe
Version     : 1.0.0
Date        : 13 Avril 2010

Etude 04 - Contr�le l'utilisation du joystick, positionnement des boutons
et appuie sur les diff�rents �l�ments. Test� avec un joypad Saitek Rumble P480.
Affiche le contenu d'une structure JOYINFOEX qui va nous renseigner sur l'�tat et
le statut de la manette. Mettre mmSystem dans les Uses.
Retrouvez ce code et bien d'autres sur "www.delphinautes.fr"
===============================================================================}
unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, mmSystem;

type
  Tf_main = class(TForm)
    Joystick: TImage;
    JoyR: TShape;
    JoyL: TShape;
    Btn1: TShape;
    Btn2: TShape;
    Btn3: TShape;
    Btn4: TShape;
    Btn5: TShape;
    Btn7: TShape;
    Btn6: TShape;
    Btn8: TShape;
    Timer1: TTimer;
    JoyState: TPanel;
    Btn9: TShape;
    Btn10: TShape;
    StructJoyInfoEx1: TPanel;
    LabSize1: TLabel;
    LabFlags1: TLabel;
    LabXpos1: TLabel;
    LabYpos1: TLabel;
    LabZpos1: TLabel;
    LabRpos1: TLabel;
    LabUpos1: TLabel;
    LabVpos1: TLabel;
    LabButtons1: TLabel;
    LabButtonNumber1: TLabel;
    LabPov1: TLabel;
    StructJoyInfoEx2: TPanel;
    LabSize2: TLabel;
    LabFlags2: TLabel;
    LabXpos2: TLabel;
    LabYpos2: TLabel;
    LabZpos2: TLabel;
    LabRpos2: TLabel;
    LabUpos2: TLabel;
    LabVpos2: TLabel;
    LabButtons2: TLabel;
    LabButtonNumber2: TLabel;
    LabPov2: TLabel;
    Up: TShape;
    Right: TShape;
    Down: TShape;
    Left: TShape;
    Center: TShape;
    procedure Timer1Timer(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  f_main: Tf_main;

implementation

{$R *.dfm}

procedure Tf_main.Timer1Timer(Sender: TObject);
var JoyInfo : JOYINFOEX;
    Result : MMRESULT;
begin
// On calcule la taille de la structure
 JoyInfo.dwSize := SizeOf(JoyInfo);
// JOY_RETURNALL equivaut � activer tous les bots JOY_RETURN sauf JOY_RETURNRAWDATA
 JoyInfo.dwFlags := JOY_RETURNALL;
// Interroge la manette sur l'�tat et le statut de ses boutons
 Result := JoyGetPosEx(JOYSTICKID1, @JoyInfo);
// Si tout s'est bien pass�, le joystick est pr�t � �tre test�
 if Result = JOYERR_NOERROR then JoyState.Caption := 'Joystick en �tat de fonctionnement'
 else
  begin
// Sinon on indique le type d'erreur
    case Result of
    MMSYSERR_NODRIVER    : JoyState.Caption := 'Le driver du joystick n''est pas pr�sent';
    MMSYSERR_INVALPARAM  : JoyState.Caption := 'Param�tre invalide';
    MMSYSERR_BADDEVICEID : JoyState.Caption := 'Mauvais identificateur de joystick';
    JOYERR_UNPLUGGED     : JoyState.Caption := 'Joystick non connect�';
    JOYERR_PARMS         : JoyState.Caption := 'Pas de joystick, param�tres invalides';
    end;
  end;
// Ici on va afficher le contenu de la structure JOYINFOEX
// La taille en octets de la structure
 LabSize2.Caption := IntToStr(JoyInfo.dwSize);
// La valeur des flags, ici 255 = JOY_RETURNALL
 LabFlags2.Caption := IntToStr(JoyInfo.dwFlags);
// Coordonn�e X actuelle
 LabXpos2.Caption := IntToStr(JoyInfo.wXpos);
// Coordonn�e Y actuelle
 LabYpos2.Caption := IntToStr(JoyInfo.wYpos);
// Coordonn�e Z actuelle
 LabZpos2.Caption := IntToStr(JoyInfo.wZpos);
// 4�me axe du joystick
 LabRpos2.Caption := IntToStr(JoyInfo.dwRpos);
// 5�me axe du joystick
 LabUpos2.Caption := IntToStr(JoyInfo.dwUpos);
// 6�me axe du joystick
 LabVpos2.Caption := IntToStr(JoyInfo.dwVpos);
// Etat actuel des boutons (jusqu'� 32 boutons)
 LabButtons2.Caption := IntToStr(JoyInfo.wButtons);
// Nombre de boutons press�s en m�me temps
 LabButtonNumber2.Caption := IntToStr(JoyInfo.dwButtonNumber);
// Position du Point Of View exprim� en degr�*100 (18.000 = 180 degr�s)
 LabPov2.Caption := IntToStr(JoyInfo.dwPOV);

// On teste si le bouton 1 est appuy�
 if (JOY_BUTTON1 and JoyInfo.wButtons)= JOY_BUTTON1 then Btn1.Brush.Color:= clRed
 else Btn1.Brush.Color:= clBlack;
// On teste si le bouton 2 est appuy�
 if (JOY_BUTTON2 and JoyInfo.wButtons)= JOY_BUTTON2 then Btn2.Brush.Color:= clRed
 else Btn2.Brush.Color:= clBlack;
// On teste si le bouton 3 est appuy�
 if (JOY_BUTTON3 and JoyInfo.wButtons)= JOY_BUTTON3 then Btn3.Brush.Color:= clRed
 else Btn3.Brush.Color:= clBlack;
// On teste si le bouton 4 est appuy�
 if (JOY_BUTTON4 and JoyInfo.wButtons)= JOY_BUTTON4 then Btn4.Brush.Color:= clRed
 else Btn4.Brush.Color:= clBlack;
// On teste si le bouton 5 est appuy�
 if (JOY_BUTTON5 and JoyInfo.wButtons)= JOY_BUTTON5 then Btn5.Brush.Color:= clRed
 else Btn5.Brush.Color:= clBlack;
// On teste si le bouton 6 est appuy�
 if (JOY_BUTTON6 and JoyInfo.wButtons)= JOY_BUTTON6 then Btn6.Brush.Color:= clRed
 else Btn6.Brush.Color:= clBlack;
// On teste si le bouton 7 est appuy�
 if (JOY_BUTTON7 and JoyInfo.wButtons)= JOY_BUTTON7 then Btn7.Brush.Color:= clRed
 else Btn7.Brush.Color:= clBlack;
// On teste si le bouton 8 est appuy�
 if (JOY_BUTTON8 and JoyInfo.wButtons)= JOY_BUTTON8 then Btn8.Brush.Color:= clRed
 else Btn8.Brush.Color:= clBlack;
// On teste si le bouton 9 est appuy� (Back)
 if (JOY_BUTTON9 and JoyInfo.wButtons)= JOY_BUTTON9 then Btn9.Brush.Color:= clRed
 else Btn9.Brush.Color:= clBlack;
// On teste si le bouton 10 est appuy� (Start)
 if (JOY_BUTTON10 and JoyInfo.wButtons)= JOY_BUTTON10 then Btn10.Brush.Color:= clRed
 else Btn10.Brush.Color:= clBlack;

// On teste la manette de gauche
 if JoyInfo.wXpos and JoyInfo.wYpos <> 32767 then JoyL.Brush.Color:= clRed
 else JoyL.Brush.Color:= clBlack;
// On teste la manette de droite
 if JoyInfo.wZpos and JoyInfo.dwRpos <> 32767 then JoyR.Brush.Color:= clRed
 else JoyR.Brush.Color:= clBlack;

// Ici on teste si le Point Of View est centr�
// normalement 65535 = -1 soit JOY_POVCENTERED mais �� ne marche pas avec -1
 if JoyInfo.dwPOV = 65535 then Center.Brush.Color:= clRed
 else Center.Brush.Color:= clBlack;
// On teste si le POV est en avant
 if JoyInfo.dwPOV = JOY_POVFORWARD then Up.Brush.Color:= clRed
 else Up.Brush.Color:= clBlack;
// On teste si le POV est � droite
 if JoyInfo.dwPOV = JOY_POVRIGHT then Right.Brush.Color:= clRed
 else Right.Brush.Color:= clBlack;
// On teste si le POV est � gauche
 if JoyInfo.dwPOV = JOY_POVLEFT then Left.Brush.Color:= clRed
 else Left.Brush.Color:= clBlack;
// On teste si le POV est en arri�re
 if JoyInfo.dwPOV = JOY_POVBACKWARD then Down.Brush.Color:= clRed
 else Down.Brush.Color:= clBlack;
end;

end.
