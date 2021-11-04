unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm5 = class(TForm)
    pnl1: TPanel;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    img4: TImage;
    img5: TImage;
    img6: TImage;
    btn1: TButton;
    lbl1: TLabel;
    pnl2: TPanel;
    procedure img1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    b:Integer;
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
uses
  Unit3,Unit2;
{$R *.dfm}

procedure TForm5.img1Click(Sender: TObject);
var
  a:Integer;
begin
  a:= TImage(Sender).Tag;
  img1.Picture.Assign(nil);
  img2.Picture.Assign(nil);
  img3.Picture.Assign(nil);
  img4.Picture.Assign(nil);
  img5.Picture.Assign(nil);
  case a of
    0 : begin
          img1.Picture.LoadFromFile('S2.jpg');
          img2.Picture.LoadFromFile('S1.jpg');
          img3.Picture.LoadFromFile('S1.jpg');
          img4.Picture.LoadFromFile('S1.jpg');
          img5.Picture.LoadFromFile('S1.jpg');
          img6.Picture.LoadFromFile('1.jpg');
          pnl2.Caption := 'Aku kira aku lebih baik dari itu';
          b:=1;
        end;
    1 : begin
          img1.Picture.LoadFromFile('S2.jpg');
          img2.Picture.LoadFromFile('S2.jpg');
          img3.Picture.LoadFromFile('S1.jpg');
          img4.Picture.LoadFromFile('S1.jpg');
          img5.Picture.LoadFromFile('S1.jpg');
          img6.Picture.LoadFromFile('2.jpg');
          pnl2.Caption := 'Kenapa hanya 2?';
          b:=2;
        end;
    2 : begin
          img1.Picture.LoadFromFile('S2.jpg');
          img2.Picture.LoadFromFile('S2.jpg');
          img3.Picture.LoadFromFile('S2.jpg');
          img4.Picture.LoadFromFile('S1.jpg');
          img5.Picture.LoadFromFile('S1.jpg');
          img6.Picture.LoadFromFile('3.jpg');
          pnl2.Caption := 'Jadi aku biasa aja';
          b:=3;
        end;
    3 : begin
          img1.Picture.LoadFromFile('S2.jpg');
          img2.Picture.LoadFromFile('S2.jpg');
          img3.Picture.LoadFromFile('S2.jpg');
          img4.Picture.LoadFromFile('S2.jpg');
          img5.Picture.LoadFromFile('S1.jpg');
          img6.Picture.LoadFromFile('4.jpg');
          pnl2.Caption := 'Ayo kawan satu bintang lagi';
          b:=4;
        end;
    4 : begin
          img1.Picture.LoadFromFile('S2.jpg');
          img2.Picture.LoadFromFile('S2.jpg');
          img3.Picture.LoadFromFile('S2.jpg');
          img4.Picture.LoadFromFile('S2.jpg');
          img5.Picture.LoadFromFile('S2.jpg');
          img6.Picture.LoadFromFile('5.jpg');
          pnl2.Caption := 'Yes aku dapat bintang 5';
          b:=5;
        end;
  end;
end;

procedure TForm5.btn1Click(Sender: TObject);
var
  a:String;
begin
  a:=Form3.lbl2.Caption;
  with DataModule2.zqry2 do
  begin
    SQL.Clear;
    SQL.Text := 'INSERT INTO review ' +
    '(Bintang, Nama_P) ' +
    'VALUES ' +
    '(:b, :a)';
    Params[0].AsInteger := b;
    Params[1].AsString := a;
    ExecSQL;
    Application.MessageBox('Rating anda telah berhasil di masukan' + #13#10 + 
      'Terima Kasih atas ratingnya kawan', 'Rate', MB_OK + MB_ICONINFORMATION);
  end;
  Application.Terminate;
end;
end.
