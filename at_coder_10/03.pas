{

問題文

すぬけ君は，黒板に書かれている整数がすべて偶数であるとき，次の操作を行うことができます．

黒板に書かれている整数すべてを，
2 で割ったものに置き換える．
すぬけ君は最大で何回操作を行うことができるかを求めてください．

入力例 1
3
8 12 40

出力例 1 
2

---------

入力例 2
4
5 6 8 10

出力例 2 
0

---------

入力例 3
6
382253568 723152896 37802240 379425024 404894720 471526144

出力例 3 
8


}


var
get_num,i,r,ans,tmp_i : integer; 
arr: array of integer; // int 型の配列

begin

  r:=1<<29; // オーバーフロー対策

  // 入力値（例 01）
  // 3
  // 8 12 40

  read(get_num); // 配列の要素数 3　を取得

  SetLength(arr, get_num); // 配列を初期化 3の要素数の配列作成

  // === 配列で値取得　8 12 40
  for i:=0 to get_num-1 do begin
    read(arr[i]);
  end;

  // 
  for i:=0 to get_num-1 do begin
      ans := 0; // カウンタ初期化
      tmp_i := arr[i]; // 配列要素の値セット

      // === 判定ロジック開始 
      while true do
      begin
      	   // === 奇数だったら、whileを停止
           if tmp_i mod 2 = 1 then 
             break;
            
	       ans := ans + 1;  // 回答用　カウント変数
           tmp_i := tmp_i div 2; // 配列の要素を２で割る
        end;
         if r>ans then begin
            r:=ans;
        end;
  end;
  
  writeln(r)

end.