program Joystick;

uses
  Forms,
  Main in 'Main.pas' {f_main};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tf_main, f_main);
  Application.Run;
end.
