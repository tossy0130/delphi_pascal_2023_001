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