unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    btn1: TButton;
    btn2: TButton;
    lbl9: TLabel;
    lbl10: TLabel;
    procedure lbl6Click(Sender: TObject);
    procedure lbl7Click(Sender: TObject);
    procedure lbl8Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
uses
  Unit1,Unit2;

{$R *.dfm}

procedure TForm4.lbl6Click(Sender: TObject);
begin
Application.MessageBox('ID ini bertujuan untuk kawan dapat login, panjangnya hanya boleh 20 huruf saja',
  'ID', MB_OK + MB_ICONINFORMATION);
end;

procedure TForm4.lbl7Click(Sender: TObject);
begin
Application.MessageBox('Password ini untuk mengamankan akun kawan jangan diberitahu siapapun ya, panjangnya hanya boleh 20 huruf saja',
  'Password', MB_OK + MB_ICONINFORMATION);
  
end;

procedure TForm4.lbl8Click(Sender: TObject);
begin
  Application.MessageBox('Nama ini untuk menginisialisasi nama kawan, nama panggilan atau nama asli pun diperbolehkan, panjangnya hanya boleh 20 huruf saja', 
    'Nama', MB_OK + MB_ICONINFORMATION);
end;

procedure TForm4.btn2Click(Sender: TObject);
var
  a,b,c: string;
label
  out;
begin
  if (edt1.Text = '') or (edt2.Text = '') or (edt3.Text = '' ) then begin
    Application.MessageBox('Semuanya harus diisi ya', 'Kosong', MB_OK +
      MB_ICONWARNING);
    goto out;
  end;
  if (Length(edt1.Text) > 20) or (Length(edt2.Text) > 20) or (Length(edt3.Text) > 20)then begin
    Application.MessageBox('Hanya boleh 20 huruf saja', 'Terlalu Panjang', 
      MB_OK + MB_ICONWARNING);
    goto out;
  end;
  a := edt1.Text;
  b := edt2.Text;
  c := edt3.Text;
  if Application.MessageBox('Sudah yakin kawan ?', '', MB_YESNO + 
    MB_ICONQUESTION) = IDYES then
  begin
    with DataModule2.zqry1 do
    begin
      SQL.Clear;
      SQL.Text := 'INSERT INTO pelanggan ' +
      '(ID_P, Pass_P, Nama_P) ' +
      'VALUES ' +
      '(:a, :b, :c)';
      Params[0].AsString := a;
      Params[1].AsString := b;
      Params[2].AsString := c;
      ExecSQL;
      Application.MessageBox('Akun kawan sudah di buat', 'Berhasil', MB_OK +
        MB_ICONINFORMATION);
    end;
  end;
  out:;
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
  edt1.Text:='';edt2.Text:='';edt3.Text:='';
  Form1.edt1.Text:=''; Form1.medt1.Text:='';
  Form4.Hide;
  Form1.Show;
end;

end.
