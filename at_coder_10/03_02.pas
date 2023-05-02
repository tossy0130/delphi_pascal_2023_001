{

https://atcoder.jp/contests/abc069/tasks/abc069_b

問題文

nternationalization という英単語は、i18n と略されることがあります。 これは、先頭文字 i と末尾文字 n の間に 
18 文字が挟まっていることに由来します。

長さ 
3 以上の英小文字のみからなる文字列 
s が与えられます。 同様の規則によって 
s を略してください。

---------
入力例 1
internationalization

出力例 2
i18n

---------

入力例 2
smiles

出力例 2 
s4s

---------

入力例 3 
xyz

出力例 3
x1z


}


var 
 get_str, v_str: string;
 str_len,last_idx,v_num: integer;
begin
   read(get_str);
   // 文字列の長さ取得 文字列：internationalization
   str_len := Length(get_str);
   last_idx := str_len; // 文字 index の最後を取得
   
   v_num := str_len - 2; // 間の文字を取得
   
   write(get_str[1]); // 文字列の先頭を出力
   write(v_num);
   write(get_str[last_idx]);
   
end.