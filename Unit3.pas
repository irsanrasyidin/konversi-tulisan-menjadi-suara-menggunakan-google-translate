unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,StrUtils, StdCtrls, ExtCtrls, ShellAPI;

type
  TForm3 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    btn1: TButton;
    mmo2: TMemo;
    btn2: TButton;
    edt1: TEdit;
    btn3: TButton;
    btn4: TButton;
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses
  Unit1,Unit5;

{$R *.dfm}

function Terbilang(bil:Extended):string;
var
  r,s: string;
  ln,i : Integer;
  sat : Array [0..20] Of String;
  rbn : array [1..4] Of string;
  //-----------------------------------

function ratusan(s:string):string;

var
  r : string;
  n : Integer;
  begin
    r := '';
    While Length(s)< 3 do begin
    s := '0'+s;
    end;
    //----------------------------- cek 2 digi terakhir
    if s[2] = '1' then begin // berarti belasan
      case s[3] of
        '0' : r:='Sepuluh ';
        '1' : r:='Sebelas';
      else
        r := sat[StrToInt(Copy(s,3,1))]+' Belas ';
      end;
    end
    else begin
      if s[2] > '0' then r := sat[StrToInt(s[2])]+' Puluh ';
      if s[3] > '0' then r := r+' '+sat[StrToInt(s[3])];
    end;
    Delete(s,2,2);
    n := StrToInt(s);
    case n of
      1 : r := 'Seratus '+r;
      2..9 : r := Sat[n]+' ratus '+r;
    end;
    Result := r;
  end;

  begin
    rbn[1] := 'ribu ';
    rbn[2] := 'juta ';
    rbn[3] := 'milyar ';
    rbn[4] := 'triliun ';
    sat[0]:='' ;
    sat[1]:='Satu ' ;
    sat[2]:='Dua ' ;
    sat[3]:='Tiga ' ;
    sat[4]:='Empat ' ;
    sat[5]:='Lima ' ;
    sat[6]:='Enam ' ;
    sat[7]:='Tujuh ' ;
    sat[8]:='Delapan ' ;
    sat[ 9]:='Sembilan ';
    // sat[10]:='Sepuluh ' ;
    // sat[11]:='Sebelas ' ;
    // sat[12]:='Dua Belas ' ; // opsi-1
    // sat[13]:='Tiga Belas ' ;
    // sat[14]:='Empat Belas ' ;
    // sat[15]:='Lima Belas ' ;
    // sat[16]:='Enam Belas ' ;
    // sat[17]:='Tujuh Belas ' ;
    // sat[18]:='Delapan Belas ' ;
    // sat[19]:='Sembilan Belas ' ;
    //---------------------------------------
    s := FloatToStr(bil);

    i := 0;
    ln := Length(s);
    While ln > 0 do begin
      if ln >= 3 then begin
          r := ratusan(Copy(s,ln-2,3))+r; // ambil 3 digit terakhir
          Delete(s,ln-2,3); // hapus 3 digit terakhir
      end
    else begin
    if (s ='1') and (i =1) then begin
      r := 'Se'+r;
    end
    else begin
      r := ratusan(s)+r;
    end;
      s := '';
    end;
    ln := Length(s);
    Inc(i); // ribuan ke..
    if ln > 0 then begin
        if i < 4 then begin
        // if (i > 1) and (Pos(rbn[i-1],r)=1) then
        // Delete(r,1,Length(rbn[i-1]));
          r := rbn[i]+r;
        end;
    end;
  end;
  Result := r;
end;

procedure TForm3.btn2Click(Sender: TObject);
const
  CHARS = ['0'..'9'];
  CHARS2 = ['a'..'z', 'A'..'Z'];
var
  myFile : TextFile;
  myFile2 : TStringList;
  letter : char;
  a,b,c,r: string;
  n:Extended;
  i:Integer;
begin
  a:='';b:='';c:=''; mmo2.Clear;
  myFile2 := TStringList.Create;
  try
    myFile2.Add(edt1.Text);
    myFile2.SaveToFile('Test.txt');
  finally
    myFile2.Free;
  end;
  AssignFile(myFile, 'Test.txt');
  Reset(myFile);
  while not Eoln(myFile) do
  begin
    read(myFile, letter);
    if (letter in CHARS) then begin
      a:= a+letter;
      //ShowMessage(a);
    end else if (letter in CHARS2) then begin
      if (Length(a) > 0) then begin
        n := StrToInt64(a);
        a :='';
        r := Terbilang(n);
        c := b+' '+r;
      end;
      b:= b+letter;
      //ShowMessage(b);
    end else if (Length(a) > 0) then begin
      n := StrToInt64(a);
      a :='';
      r := Terbilang(n);
      c := c+' '+b+' '+r;
      b:='';
    end else if (Length(b) > 0) then begin
      c := c+' '+b;
      b:='';
    end;
  end;
  if (Length(a) > 0) then begin
    n := StrToInt64(a);
    a :='';
    r := Terbilang(n);
    c := c+' '+b+' '+r;
    b:='';
  end;
  if (Length(b) >0) then begin
    c:=c+' '+b;
    b:='';
  end;
  CloseFile(myFile);
  //ShowMessage(b);
  mmo2.Lines.Add(c);
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
  case
    Application.MessageBox('Apakah kawan yakin tidak akan memberikan rating terlebih dahulu ?',
    'Rate ?', MB_YESNOCANCEL + MB_ICONQUESTION) of
    IDYES:
      begin
        Application.Terminate;
      end;
    IDNO:
      begin
        Form5.Show;
        Form3.Hide;
      end;
  end;

end;

procedure TForm3.btn3Click(Sender: TObject);
begin
  Form5.Show;
  Form3.Hide;
end;

procedure TForm3.btn1Click(Sender: TObject);
var
 msg,lnk : string;
begin
 msg := mmo2.Lines[0];
 if Length(msg) > 0 then begin
 lnk := 'https://translate.google.com/translate_tts?ie=UTF-8&tl=id-ID&client=twob&q=';
 lnk := lnk + msg;
 ShellExecute(Application.Handle,'Open',PAnsiChar(lnk),nil,nil, SW_HIDE);
 end;
end;


end.
