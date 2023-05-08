{

入力例 1 
2
12 5
1000 2000

出力例 1 
1

地点 1 の平均気温は 12−1000×0.006=6 度です。
地点 2 の平均気温は 12−2000×0.006=0 度です。

よって、宮殿を建設すべき地点は地点 1 となります。

---------

入力例 2 
3
21 -11
81234 94124 52141

出力例 2 
3

}

var
n, t, a : integer;
arr: array of integer; // int型　配列
i, ans, absvalue, tmp: integer;
yy : Double;

begin
read(n);
read(t,a);

var
n, t, a : integer;
arr: array of integer; // int型　配列
i, ans, absvalue, tmp: integer;
yy : Double;

begin
read(n);
read(t,a);

// 配列初期化 n個の空の配列を作成
SetLength(arr, n);

// === 配列で値取得
for i := 0 to n - 1 do begin
read(arr[i]);
// writeln(arr[i]);
end;

// === ループして判定ロジック
for i := 0 to n - 1 do begin

// Double型へ代入
yy := t - arr[i] * 0.006;

// Double型を四捨五入して、integr型へ変換
tmp := Round(yy);

// abs で絶対値へ変換
absvalue := abs(tmp);

if absvalue > a then begin
ans := ans + 1;
end;
end;

writeln(ans);

end.
SetLength(arr, n);

// === 配列で値取得
for i := 0 to n - 1 do begin
read(arr[i]);
// writeln(arr[i]);
end;

// === ループして判定ロジック
for i := 0 to n - 1 do begin

// Double型へ代入
yy := t - arr[i] * 0.006;

// Double型を四捨五入して、integr型へ変換
tmp := Round(yy);

// abs で絶対値へ変換
absvalue := abs(tmp);

if absvalue > a then begin
ans := ans + 1;
end;
end;

writeln(ans);

end.