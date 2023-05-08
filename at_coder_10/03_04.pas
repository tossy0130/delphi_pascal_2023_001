{

出力
前から数えて奇数文字目だけ抜き出して作った文字列を出力せよ。

入力例 1 
atcoder
出力例 1 
acdr

ーーーーーーー
入力例 2
aaaa
出力例 2 
aa

ーーーーーーー

入力例 4 
fukuokayamaguchi

出力例 4 
fkoaaauh

}

var
 s, s_sum : string;
 i, s_len : integer;

begin
 // 値取得
 read(s);
 
 s_len := Length(s);
 
 // === 判定ロジック
 for i := 1 to s_len do begin
    // === 奇数の index の番号を 抽出
    if i mod 2 = 1 then begin
       // writeln(s[i]);
       s_sum := s_sum + s[i]; // === 文字列を追加していく。
    end;
 end;
 
 writeln(s_sum);

end.
