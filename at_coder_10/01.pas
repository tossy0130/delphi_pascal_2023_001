
//====================== 第 1 問: ABC 086 A - Product
var
	a,b,tmp: integer; // 変数宣言
begin
	readln(a,b); // 値取得
    
    tmp := a * b mod 2; // a * b % 2 == 2
	
    // ===　偶数、奇数　判定
    if tmp = 0 then begin
    	writeln('Odd');
    end
    else
    begin 
        writeln('Even');
    end;
end.