{

問題文

すぬけ君は 
1,2,3 の番号がついた 
3 つのマスからなるマス目を持っています。 各マスには 0 か 1 が書かれており、マス 
i には 
s 
i
​
  が書かれています。

すぬけ君は 1 が書かれたマスにビー玉を置きます。 ビー玉が置かれるマスがいくつあるか求めてください。

入力例 1 
101

出力例 1 
2

---------

入力例 2
000

出力例 2
0

---------

}

var
 s :string; 
 i, cnt :integer;
begin
    read(s); // 値取得　入力例 101 を文字列で取得
    
    // ＊＊＊ 文字列 101 を 1文字ずつ出力 ＊＊＊
    for i:=1 to 3 do begin
       if s[i] = '1' then 
       begin
          cnt := cnt + 1; // === 文字列の 1をカウント
       end;     
    end;
    
    writeln(cnt);
    
end.