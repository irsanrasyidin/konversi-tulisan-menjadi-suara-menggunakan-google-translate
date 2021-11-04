unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, SMDBGrid, ExtCtrls;

type
  TForm6 = class(TForm)
    pnl1: TPanel;
    lbl1: TLabel;
    smdbgrd1: TSMDBGrid;
    btn1: TButton;
    lbl2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
uses
  Unit2;

{$R *.dfm}

procedure TForm6.FormCreate(Sender: TObject);
var
  i,j,k: Integer;
  x : array[1..100] of Integer;
  a:Extended;
begin
  k:=0;
  j:=DataModule2.zqry2.RecordCount;
  for i:=1 to j do begin
    x[i]:= DataModule2.zqry2['Bintang'];
    DataModule2.zqry2.Next;
    k:=k+x[i];
  end;
  a:=k/j;
  lbl2.Caption := FormatFloat('0.00', a)
end;

procedure TForm6.btn1Click(Sender: TObject);
begin
  Close;
end;

end.
