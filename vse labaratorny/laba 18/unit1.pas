unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
  var
  a, b, h, x, y: Double;
begin
  // Очищаем Memo перед новым расчетом
  Memo1.Clear;

  // Проверяем ввод данных
  if not TryStrToFloat(Edit1.Text, a) then
  begin
    ShowMessage('Ошибка ввода a! Введите число.');
    Exit;
  end;

  if not TryStrToFloat(Edit2.Text, b) then
  begin
    ShowMessage('Ошибка ввода b! Введите число.');
    Exit;
  end;

  if not TryStrToFloat(Edit3.Text, h) or (h <= 0) then
  begin
    ShowMessage('Ошибка ввода h! Введите положительное число.');
    Exit;
  end;

  // Добавляем заголовок в Memo
  Memo1.Lines.Add('x' + #9 + 'y = x^2');
  Memo1.Lines.Add('----------------');

  // Вычисляем значения функции
  x := a;
  while x <= b + 1e-10 do  // +1e-10 для учета погрешностей
  begin
    y := x * x;
    Memo1.Lines.Add(Format('%.2f' + #9 + '%.2f', [x, y]));
    x := x + h;
  end;
end;
end.

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

end.
