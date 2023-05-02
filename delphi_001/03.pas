unit test01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private 宣言 }
  public
    { Public 宣言 }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

unit test01;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private 宣言 }
  public
    { Public 宣言 }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// === ボタン1 クリックイベント
procedure TForm1.Button1Click(Sender: TObject);
  var cnt:Integer;
begin
      // Button1.Visible　消す
      cnt := strToInt(Button1.Caption); // strToInt　文字列 => 整数
      cnt := cnt + 1;
      Button1.Caption := IntToStr(cnt); // IntToStr  整数 => 文字列

    //  ***上記を1行で書くと ***
      Button1.Caption := IntToStr(StrToInt(Button1.Caption)+1) ;

end;

// === ボタン2 クリックイベント       リセットボタン
procedure TForm1.Button2Click(Sender: TObject);
begin

  Button1.Caption := '0';

end;

end.
procedure TForm1.Button1Click(Sender: TObject);
  var cnt:Integer;
begin
      // Button1.Visible　消す
      cnt := strToInt(Button1.Caption); // strToInt　文字列 => 整数
      cnt := cnt + 1;
      Button1.Caption := IntToStr(cnt); // IntToStr  整数 => 文字列

end;

// === ボタン2 クリックイベント       リセットボタン
procedure TForm1.Button2Click(Sender: TObject);
begin

  Button1.Caption := '0';

end;

end.


unit lesson_02;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    procedure Button1Click(Sender: TObject);
  private
    { Private 宣言 }
  public
    { Public 宣言 }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

  var x : Integer;
  var i, total,total1,total2 : Integer;
begin

  // === if 文  01
  (*
  if Button1.Caption = '10' then showmessage('ボタンの値は「10」です！')
    else showmessage('ボタンの値 10 ではない');
  *)


  // === if 文  02
  (*
  if StrToInt(Button1.Caption) > 15 then
      Button1.Caption := '10'
  else
       // パネル１　の色を変える
      Panel1.Color := clRed;
      Button1.Caption := IntToStr(StrToInt(Button1.Caption) + 1);
  *)

  (*
  // === if 文 03
  if Panel1.Color = clRed then
      Panel1.Color := clBlue
  else if Panel1.Color = clBlue then
      Panel1.Color := clYellow
  else
      Panel1.Color := clRed;

// === if 文 03  記述 02  if else の中に if else
  if Panel1.Color = clRed then Panel1.Color := clBlue
  else
    if
      Panel1.Color = clBlue then Panel1.Color := clYellow
    else
      Panel1.Color := clYellow ;
    *)

  (*
  // === if 04 or 式　and　　
   if (Panel1.Color = clRed) or ( Panel1.Color = clBlue) then
   begin
      showmessage('パネルの色は赤色か青色のどちらかです！') ;
   end else
   begin
      showmessage('パネルの色は赤色か青色以外！') ;
   end ;
    *)

   (*
   // === if 05 and
   x := 15;
   if (10 <= x) and (20 >= x) then
    showmessage('x は 10以上, 20以下');
    *)

    // === if 06 not
    x := 15;
    if x <> 10 then
      showmessage('xは10ではない');

    x := 9;
    if not (x = 10) then showmessage('x は10ではありません！') ;


   // ＊＊＊＊＊＊＊＊＊　FOR 文 ＊＊＊＊＊＊＊＊＊

    // === FOR 01
    total := 0;

    for i := 1 to 10 do
      total := total + i;

    showmessage('1から10までの合計:::' + IntToStr(total));

   // === FOR 02 掛け算の総和
    total := 1;

    for i := 1 to 10 do
      total := total * i;

    showmessage('1から10までの合計:::' + IntToStr(total));

   //ループ文内容が複数行に渡る場合の処理
    total1 := 0;
    total2 := 1;

    for i := 1 to 10 do
    begin
      total1 := total1 + i;
      total2 := total2 * i;
    end;
    showmessage('和:::' + IntToStr(total1) + '積:::' + IntToStr(total2));

end;

end.