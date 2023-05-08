{

B - Bitter Alchemy
https://atcoder.jp/contests/abc095/tasks/abc095_b


入力例 1 
3 1000
120
100
140

出力例 1 
9

1000 グラムのお菓子の素があり、赤木さんは 3 種類のドーナツを作ることができます。
3 種類すべてのドーナツを 1 個ずつ作ると、
120+100+140=360 グラムのお菓子の素を消費します。このとき残る 640 グラムのお菓子の素から、
ドーナツ 2 をさらに 6 個作ることができます。以上で合計 9 個のドーナツを作ることができ、これが最大です。

---------

入力例 2 
4 360
90
90
90
90

出力例 2 
4

---------

入力例 3
5 3000
150
130
150
130
110

出力例 3
26

}


var
 n, x, i : integer;
 arr_min, arr_sum, arr_count, arr_tmp,arr_min_count: integer;
 arr: array of integer;  // integer型　配列

begin
 read(n, x);
 
 arr_sum := 0; // 合計値
 arr_count := 0; // 回数
 arr_min_count := 0; 
 
 // 空の配列を作成
 SetLength(arr, n); // n個の分の配列作成
 
 // 配列で値取得
 for i := 0 to n - 1 do begin
 	read(arr[i]);
 end;
 
 // === 配列の最小値取得
 arr_min := arr[0];
 for i := 1 to n - 1 do begin
 	if arr_min > arr[i] then begin
    	arr_min := arr[i];
	end;
 end;
 
// === 判定ロジック
  
  // === 全要素 １つずつ回す。
  for i := 0 to n - 1 do begin
  	 arr_sum := arr_sum + arr[i];
     arr_count := arr_count + 1;
  end;
  
  // === １週分回った（１個ずつ買った） arr_sum を全体金額から引く
  arr_tmp := x - arr_sum;
  
  // === min で残った合計値を引いていく
  if arr_tmp > arr_min then begin
  	
    while arr_tmp > arr_min do
      begin
      	
        arr_min_count := arr_min_count + 1;
      	arr_tmp := arr_tmp - arr_min;
        
      end;
      
       writeln(arr_min_count + arr_count); 
  end
  
  else
  begin
  	 // === arr_min　より 残り数が少なかったので １週した値を出力
  	 writeln(arr_count);
  end;

end.