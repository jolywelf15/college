unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Buttons,
  Grids, StdCtrls, LCLType;

type
  TContact = packed record
    Name: ShortString;
    Phone: ShortString;
    Note: ShortString;
  end;

  { TForm1 }

  TForm1 = class(TForm)
    bAdd: TButton;
    bEdit: TButton;
    bDel: TButton;
    bSort: TButton;
    Panel1: TPanel;
    SG: TStringGrid;
    procedure bAddClick(Sender: TObject);
    procedure bDelClick(Sender: TObject);
    procedure bEditClick(Sender: TObject);
    procedure bSortClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FDataPath: string;
    procedure InitializeGrid;
    procedure LoadContacts;
    procedure SaveContacts;
    function GetSelectedContact: TContact;
    procedure SetSelectedContact(const AContact: TContact);
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.InitializeGrid;
begin
  SG.Clear;
  SG.RowCount := 1; // Header row
  SG.ColCount := 3;
  SG.FixedRows := 1;
  SG.FixedCols := 0;
  SG.Options := [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect];

  SG.Cells[0, 0] := 'Имя';
  SG.Cells[1, 0] := 'Телефон';
  SG.Cells[2, 0] := 'Примечание';

  SG.ColWidths[0] := 200;
  SG.ColWidths[1] := 150;
  SG.ColWidths[2] := 250;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDataPath := ExtractFilePath(ParamStr(0)) + 'contacts.dat';
  InitializeGrid;
  LoadContacts;
  KeyPreview := True; // Enable form-wide key events
end;

procedure TForm1.LoadContacts;
var
  F: file of TContact;
  Contact: TContact;
begin
  if not FileExists(FDataPath) then Exit;

  try
    AssignFile(F, FDataPath);
    Reset(F);

    while not Eof(F) do
    begin
      Read(F, Contact);
      SG.RowCount := SG.RowCount + 1;
      SG.Cells[0, SG.RowCount-1] := Contact.Name;
      SG.Cells[1, SG.RowCount-1] := Contact.Phone;
      SG.Cells[2, SG.RowCount-1] := Contact.Note;
    end;
  finally
    CloseFile(F);
  end;
end;

procedure TForm1.SaveContacts;
var
  F: file of TContact;
  Contact: TContact;
  I: Integer;
begin
  if SG.RowCount <= 1 then Exit; // No data to save

  try
    AssignFile(F, FDataPath);
    Rewrite(F);

    for I := 1 to SG.RowCount - 1 do
    begin
      Contact.Name := SG.Cells[0, I];
      Contact.Phone := SG.Cells[1, I];
      Contact.Note := SG.Cells[2, I];
      Write(F, Contact);
    end;
  finally
    CloseFile(F);
  end;
end;

function TForm1.GetSelectedContact: TContact;
begin
  if SG.Row > 0 then
  begin
    Result.Name := SG.Cells[0, SG.Row];
    Result.Phone := SG.Cells[1, SG.Row];
    Result.Note := SG.Cells[2, SG.Row];
  end
  else
  begin
    Result.Name := '';
    Result.Phone := '';
    Result.Note := '';
  end;
end;

procedure TForm1.SetSelectedContact(const AContact: TContact);
begin
  if SG.Row > 0 then
  begin
    SG.Cells[0, SG.Row] := AContact.Name;
    SG.Cells[1, SG.Row] := AContact.Phone;
    SG.Cells[2, SG.Row] := AContact.Note;
  end;
end;

procedure TForm1.bAddClick(Sender: TObject);
var
  Contact: TContact;
begin
  Contact.Name := InputBox('Новый контакт', 'Введите имя:', '');
  if Contact.Name = '' then Exit;

  Contact.Phone := InputBox('Новый контакт', 'Введите телефон:', '');
  Contact.Note := InputBox('Новый контакт', 'Введите примечание:', '');

  SG.RowCount := SG.RowCount + 1;
  SG.Cells[0, SG.RowCount-1] := Contact.Name;
  SG.Cells[1, SG.RowCount-1] := Contact.Phone;
  SG.Cells[2, SG.RowCount-1] := Contact.Note;

  // Auto-scroll to new contact
  SG.Row := SG.RowCount - 1;
end;

procedure TForm1.bEditClick(Sender: TObject);
var
  Contact: TContact;
begin
  if SG.Row < 1 then
  begin
    ShowMessage('Выберите контакт для редактирования!');
    Exit;
  end;

  Contact := GetSelectedContact;

  Contact.Name := InputBox('Редактирование', 'Имя:', Contact.Name);
  Contact.Phone := InputBox('Редактирование', 'Телефон:', Contact.Phone);
  Contact.Note := InputBox('Редактирование', 'Примечание:', Contact.Note);

  SetSelectedContact(Contact);
end;

procedure TForm1.bDelClick(Sender: TObject);
begin
  if SG.Row < 1 then
  begin
    ShowMessage('Выберите контакт для удаления!');
    Exit;
  end;

  if MessageDlg('Подтверждение',
     'Удалить контакт "' + SG.Cells[0, SG.Row] + '"?',
     mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    SG.DeleteRow(SG.Row);
  end;
end;

procedure TForm1.bSortClick(Sender: TObject);
begin
  if SG.RowCount <= 1 then
  begin
    ShowMessage('Нет данных для сортировки!');
    Exit;
  end;

  SG.SortColRow(True, 0); // Sort by name
  ShowMessage('Контакты отсортированы по имени');
end;

procedure TForm1.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  SaveContacts;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_INSERT: bAdd.Click;    // Insert key for Add
    VK_DELETE: bDel.Click;    // Delete key for Delete
    VK_RETURN: bEdit.Click;   // Enter key for Edit
    VK_F3: bSort.Click;       // F3 key for Sort
  end;
end;

end.
