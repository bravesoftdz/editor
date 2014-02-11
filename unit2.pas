unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    StaticText1: TStaticText;
    procedure Button1Click(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation
uses Unit1;
{$R *.lfm}

{ TForm2 }

procedure TForm2.StaticText1Click(Sender: TObject);
begin
   form1.popupmenu1.popup();
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  close;
end;

end.

