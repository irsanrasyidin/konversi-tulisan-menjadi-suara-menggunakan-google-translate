unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edt1: TEdit;
    lbl5: TLabel;
    btn1: TButton;
    btn2: TButton;
    medt1: TMaskEdit;
    procedure btn2Click(Sender: TObject);
    procedure lbl3Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    c:String;
  end;

var
  Form1: TForm1;

implementation
uses
  unit2,Unit3,Unit4,Unit6;

{$R *.dfm}

procedure TForm1.btn2Click(Sender: TObject);
var
  i,y:integer;
  a,b:string;
begin             
  y:=0;
  DataModule2.zqry1.SQL.Text:='Select * from pelanggan';
  DataModule2.zqry1.Active:=True;
if (edt1.Text='admin') and (medt1.Text='admin') then begin
  Form1.Hide;
  Form6.Show;
  y:=1;
end;
if (edt1.Text='') and (medt1.Text='') then begin
      Application.MessageBox('Harap masukkan password dengan benar!',
  'Keterangan', MB_OK + MB_ICONSTOP);
  end else begin
    for i := 1 to DataModule2.zqry1.RecordCount do begin
      a := DataModule2.zqry1['ID_P'];
      b := DataModule2.zqry1['Pass_P'];
      c := DataModule2.zqry1['Nama_P'];
      if (edt1.Text=a) and (medt1.Text=b) then begin
        ShowMessage('Selamat Datang '+c);
        y:=1;
        Form3.lbl2.Caption:=c;
        Form3.Show;
        Form1.Hide;
      end;
      DataModule2.zqry1.Next;
    end;
    if  y = 0 then
      Application.MessageBox('Harap masukkan password dengan benar!',
    'Keterangan', MB_OK + MB_ICONSTOP);
    end;
end;

procedure TForm1.lbl3Click(Sender: TObject);
begin
  Form4.Show;
  Form1.Hide;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
 