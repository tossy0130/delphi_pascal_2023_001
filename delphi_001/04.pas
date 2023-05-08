unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    Memo1: TMemo;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    procedure N5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
  private
    { Private 宣言 }
  public
    { Public 宣言 }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

// === 「名前を付けて保存」
procedure TForm1.N5Click(Sender: TObject);
begin

  // ダイアログ　処理
  if SaveDialog1.Execute = True then
  begin
     Memo1.Lines.SaveToFile(SaveDialog1.FileName);
  end;

end;

// === 「ファイルを開く」
procedure TForm1.N3Click(Sender: TObject);
begin

  // 開くボタン
  if OpenDialog1.Execute then
  begin

    // ファイルを開いたら、ファイルのパスが メモのキャプションへ表示される。
    Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
    Form1.Caption := OpenDialog1.FileName;
  end;

end;

// === 「上書き保存」
procedure TForm1.N4Click(Sender: TObject);
begin

  // === 上書き保存　ボタンを押したら

  // 既存ファイルの場合
  if FileExists(Form1.Caption) then begin
     Memo1.Lines.SaveToFile(Form1.Caption)
  end
  else
  begin
  //　名前をつけて保存を実行
  N5.Click;
  end;

end;


// === 「新規」
procedure TForm1.N2Click(Sender: TObject);
var
  ans : Word;

begin

  // === Memo1 が 変更されていたら、（何かしら操作をされていたら）
  if Memo1.Modified then begin
    ans := MessageDlg('変更されています。保存しますか?',
            mtConfirmation, [mbYes, mbNo, mbCancel], 0);

    //=== ダイアログ処理 ===
    // キャンセル処理
    if ans = mrCancel then Exit;

    // 保存処理
    if ans = mrYes  then
      N4.Click;

    end else
    begin

      // メモが更新されていない場合（何も操作されていない）
      // 新規処理
      Memo1.Lines.Clear;
      Form1.Caption := '新規簡易エディター';

    end;


end;


// === 「終了」
procedure TForm1.N21Click(Sender: TObject);

var
  ans : Word;

begin

  // === Memo1 が 変更されていたら、（何かしら操作をされていたら）
  if Memo1.Modified then
  begin
    ans := MessageDlg('変更されています。保存しますか？',
               mtConfirmation, [mbYes, mbNo, mbCancel], 0);

    // === ダイアログ処理
    if ans := mrCancel then Exit;
    if ans := mrYes then N4.Click;

  end;

  Close;
  　

end;



end.



