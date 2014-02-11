unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    OpenDialog1: TOpenDialog;
    PopupMenu1: TPopupMenu;
    SaveDialog1: TSaveDialog;
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem14Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  f_name:string;
  f:text;

implementation
    uses Unit2;
{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
    if opendialog1.execute then
    begin
     f_name:=opendialog1.filename;
     assignfile(f,f_name);
     reset(f);
     memo1.lines.loadfromfile(f_name);
    end;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
     if opendialog1.execute then
     f_name:=opendialog1.filename;
    assignfile(f,f_name);
    reset(f);
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem14Click(Sender: TObject);
begin
  edit1.Text:='popup';
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
  form2.show();
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.MenuItem15Click(Sender: TObject);
begin
   edit1.Text:='New Item2';
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
    if savedialog1.Execute then
    begin
     assignfile(f,savedialog1.filename);
     Memo1.Lines.SaveToFile(savedialog1.filename);
    end;
end;

end.

