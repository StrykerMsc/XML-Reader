unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Vcl.StdCtrls,
  Vcl.Menus, Xml.XMLDoc, System.Actions, Vcl.ActnList, Vcl.Grids, ComObj;

type
  TForm1 = class(TForm)
    Button1: TButton;
    XMLDocument1: TXMLDocument;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    FileExitItem: TMenuItem;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    ActionList1: TActionList;
    FileExit: TAction;
    Button2: TButton;
    StringGrid1: TStringGrid;
    SaveDialog1: TSaveDialog;
    Memo1: TMemo;
    Button4: TButton;
    procedure FileExitExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    function   GetExcelSaveAs: String;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
  var
  F : TextFile;
  S : String ;
  Cnt : Integer;
  Od : TOpenDialog;
begin
  Od := OpenDialog1;
  if Od.InitialDir = '' then
    Od.InitialDir := ExtractFilePath( Application.ExeName )
  ;
  if not Od.Execute then Exit;
  if not FileExists(Od.FileName) then begin
    MessageDlg(
      '���� � �������� ������ �� ������. �������� ��������.'
      ,mtWarning, [mbOK], 0) ;
    Exit;
  end;

  AssignFile(F, Od.FileName);
  Reset(F);
  Cnt := 0;
  while not Eof(F) do begin
    //������ ������.
    Read(F, S);
    //Eoln(F) ���������� True, ���� �������� ��������� ��������
    //�� ������� ����� ������, ���� �� ������� ����� �����.
    if Eoln(F) then Inc(Cnt);
    //������ ���� ����� ������ (���� �� ������������).�
    Readln(F);
  end;
  CloseFile(F);
  Memo1.Lines.LoadFromFile(Od.FileName);
  Label1.Caption:='���������� �����:  ' + IntToStr(Cnt);
  ShowMessage ('���������');
end;

procedure TForm1.Button2Click(Sender: TObject);
var
   word, word1, word2, word3, word4, word5, word6, word7, word8, s, w: String;
   i, j, n, l, m, o, p, a, k, d, v, z:Integer;
begin
   word := '[OUT]';
   word1 :='[IN';
   word2 :='</ROOT>';
   word3 :='<MSG-TYPE>UPDATE</MSG-TYPE>';
   word4 :='<ACK>';
   word5 :='<GET-BULK-FLIGHTS>';
   word6 :='<MSG-TYPE>BULK</MSG-TYPE>';
   word7 :='<DEPARTURES>';
   word8 :='<ARRIVALS>';

   n :=0;
   l :=0;
   m :=0;
   o :=0;
   p :=0;
   a :=0;
   k :=0;
   d :=0;
   v :=0;
   for i:=0 to Memo1.Lines.Count-1 do
   begin
      s:=Memo1.Lines[i]+' ';
      j:=1;
      while j<=Length(s) do
      begin
         w:='';
         while s[j]<>' ' do
         begin
            w:=w+s[j];
            j:=j+1;
         end;
         if w=word then n:=n+1;
         if w=word1 then l:=l+1;
         if w=word2 then m:=m+1;
         if w=word3 then o:=o+1;
         if w=word4 then p:=p+1;
         if w=word5 then a:=a+1;
         if w=word6 then k:=k+1;
         if w=word7 then d:=d+1;
         if w=word8 then v:=v+1;
         j:=j+1;
      end;
  end;
z :=Form1.StringGrid1.RowCount;
Form1.stringgrid1.RowCount :=Form1.StringGrid1.RowCount+1;
z :=z-1;
StringGrid1.Cells[0,0]:='���� � �����';
StringGrid1.Cells[1,0]:='����� ��������� ';
StringGrid1.Cells[1,z]:=IntToStr(m);
StringGrid1.Cells[2,0]:='���������  ';
StringGrid1.Cells[2,z]:=IntToStr(n);
StringGrid1.Cells[3,0]:='�������� ';
StringGrid1.Cells[3,z]:=IntToStr(l);
StringGrid1.Cells[4,0]:='DEPARTURES ';
StringGrid1.Cells[4,z]:=IntToStr(d);
StringGrid1.Cells[5,0]:='ARRIVALS ';
StringGrid1.Cells[5,z]:=IntToStr(v);
StringGrid1.Cells[6,0]:='UPDATE ';
StringGrid1.Cells[6,z]:=IntToStr(o);
StringGrid1.Cells[7,0]:='ACK ';
StringGrid1.Cells[7,z]:=IntToStr(p);
StringGrid1.Cells[8,0]:='GBF ';
StringGrid1.Cells[8,z]:=IntToStr(a);
StringGrid1.Cells[9,0]:='BULK ';
StringGrid1.Cells[9,z]:=IntToStr(k);
ShowMessage('���������');
end;

function TForm1.GetExcelSaveAs: String;
begin
Result:= SaveDialog1.FileName + '';
end;

procedure TForm1.Button3Click(Sender: TObject);
var
ExcelApp, Sheet: variant;
Col, Row: Word;
  begin
if SaveDialog1.Execute then

ExcelApp:= CreateOleObject('Excel.Application');
  try
ExcelApp.Visible:= False;
ExcelApp.Workbooks.Add;
Sheet:= ExcelApp.ActiveWorkBook.WorkSheets[1];
  for Col:= 0 to StringGrid1.ColCount -1 do
  for Row:= 0 to StringGrid1.RowCount -1 do
Sheet.Cells[Row + 1, Col +1]:= StringGrid1.Cells[Col, Row];
ExcelApp.ActiveWorkbook.SaveAs(GetExcelSaveAs);
  finally
ExcelApp.Application.Quit;
ExcelApp:= Unassigned;
Sheet:= Unassigned;

  end;
ShowMessage('���������� ���������!');
end;
procedure Xls_Open(XLSFile:string; Grid:TStringGrid);
 const
  xlCellTypeLastCell = $0000000B;
var
  ExlApp, Sheet: OLEVariant;
  i, j, r, c:integer;

begin
  //������� ������ Excel
  ExlApp := CreateOleObject('Excel.Application');

  //������ ���� Excel ���������
  ExlApp.Visible := false;

  //��������� ���� XLSFile
  ExlApp.Workbooks.Open(XLSFile);

  //������� ������ Sheet(��������) � ��������� ����� ����� (1)
  //� �����, � �������� ����� ������������ ������
  Sheet := ExlApp.Workbooks[ExtractFileName(XLSFile)].WorkSheets[1];

  //���������� ��������� ������ �� �����
  Sheet.Cells.SpecialCells(xlCellTypeLastCell, EmptyParam).Activate;

    // ���������� ����� ��������� ������
    r := ExlApp.ActiveCell.Row;

    // ���������� ����� ���������� �������
    c := ExlApp.ActiveCell.Column;

    //������������� ���-�� �������� � ����� � StringGrid
    Grid.RowCount:=r;
    Grid.ColCount:=c;

    //��������� �������� �� ������ ������ � �������� � ���� �������
     for j:= 1 to r do
       for i:= 1 to c do
         Grid.Cells[i-1,j-1]:= sheet.cells[j,i];
        //���� ���������� ��������� ������� ��
       //Grid.Cells[i-1,j-1]:= sheet.cells[j,i].formula;

 //��������� ���������� Excel
 ExlApp.Quit;

 //������� ���������� ������
 ExlApp := Unassigned;
 Sheet := Unassigned;

end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  If OpenDialog1.Execute then Xls_Open (OpenDialog1.FileName, StringGrid1);
  ShowMessage ('���������');
end;


procedure TForm1.FileExitExecute(Sender: TObject);
begin
 Close;
end;
end.
