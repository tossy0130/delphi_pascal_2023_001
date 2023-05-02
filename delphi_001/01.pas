unit Unit1;

interface

uses
Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
Dialogs, StdCtrls;

type
TForm1 = class(TForm)
Memo1: TMemo;
Label1: TLabel;
Label2: TLabel;
Button1: TButton;
procedure Button1Click(Sender: TObject);
procedure FormKeyPress(Sender: TObject; var Key: Char);
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

var c : Integer;

begin

// === メモへ項目追加

{
Memo1.Lines.Clear; // 初期化

Memo1.Lines.Add('one');
Memo1.Lines.Add('two');
Memo1.Lines.Add('three');
Memo1.Lines.Add('four');
Memo1.Lines.Add('five');
Memo1.Lines.Add('six');
Memo1.Lines.Add('seven');
Memo1.Lines.Add('eight');
Memo1.Lines.Add('nine');
Memo1.Lines.Add('ten');
}

// メモへ項目追加 with
with Memo1.Lines do
begin
Clear;
Add('one');
Add('two');
Add('three');
Add('four');
Add('five');
Add('six');
Add('seven');
Add('eight');
Add('nine');
Add('ten');
end;

// === one を表示
Label2.Caption := Memo1.Lines[0];

c := Memo1.Lines.Count;
showmessage(IntToStr(c));

end;


{
フォームのどこかを押した処理
}
procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);


var s : String ;
var c : Integer;

begin
KeyPreview := True;
s := Label2.Caption;

// === メモを入れる
c := Memo1.Lines.Count;

// === 項目の　１文字目が一致していたら
if Key = Copy(s,1,1) then
begin
//
Delete(s,1,1);
Label2.Caption := s;

end;

// === 完了
if (Label2.Caption = '') or (Memo1.Lines.Count = 1) then
begin
showmessage('問題完了');
end;

Memo1.Lines.Delete(0); // 　メモの行数削除
Label2.Caption := Memo1.Lines[0];

end;

end.