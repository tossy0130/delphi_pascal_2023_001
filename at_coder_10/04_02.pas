var
	k,d,ans: integer;
    i,j : integer;
    ok_Flg: boolean;
begin
	read(ans);
    k := 4; // ４ドルのケーキ
    d := 7; // 7ドルのドーナツ
    ok_Flg := False;
    
    for i := 0 to 100 do begin
    	for j := 0 to 100 do begin
        	
            // === 全探索を行って、4ドル 7ドル　で買えるパターンがあれば true
        	if i * k + j * d = ans then
            begin
            	ok_Flg := True;
                break;
            end;
        
    	end;
    end;
    
    // === フラグが true なら　買えるパターンありで Yesを出力
    if ok_Flg then
    begin
    	writeln('Yes');
    end
    else
    begin
    	writeln('No');
    end;
    
end.