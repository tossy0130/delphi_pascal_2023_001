{

問題文

英小文字からなる文字列 
s が与えられます。前から数えて奇数文字目だけ抜き出して作った文字列を出力してください。 ただし、文字列の先頭の文字を1文字目とします。


入力
入力は以下の形式で標準入力から与えられる。

s
出力
前から数えて奇数文字目だけ抜き出して作った文字列を出力せよ。

--------------------

入力例 1 
atcoder

出力例 1 
acdr

1 文字目の a, 3 文字目の c, 5 文字目の d, 7 文字目の r を取り出して acdr となります。

入力例 2 
aaaa

出力例 2 
aa

入力例 3 
z

出力例 3 
z

入力例 4 
fukuokayamaguchi

出力例 4 
fkoaaauh


}


var
 s , ans_str: string;
 s_len, i , a_idx, z_idx, ans_idx : integer;

begin
 read(s);
 s_len := Length(s); // 文字列の長さ取得
 a_idx := 0;
 z_idx := 0;

// === 文字列の先頭の A の index を取得する
 for i := 1 to s_len do begin
      if s[i] = 'A' then begin
          a_idx := i;
          break;
      end;
end;

// === 文字列の末尾の Z の index を取得する
for i := 1 to s_len do begin
      if s[i] = 'Z' then begin
          z_idx := i;
          continue;
      end;
end;
 
 // === 判定ロジック　A ~ Z までの文字列間をループして、文字を取得
 for i := a_idx to z_idx do begin
 	ans_str := ans_str + s[i];
 end;
 
 // === A ~ Z までの文字数を出力
 writeln(Length(ans_str));
 

end.