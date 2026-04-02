//STRING METHODS
module str;
string s="GOOD MORNING";
string a="kamal";
string k="rajni";
string t="ajith";
string h="kamal";
string i="RAJNI";
string v="siva";
int ascii;
string substring,concatenation;
initial begin
$display("s=%s,a=%s,k=%s,t=%s",s,a,k,t);
//length of the string
$display("length of s=%0d",s.len());
//assign character in the string
v.putc(3,"i");
$display("assign char in v=%s",v);
//return a character
$display("return a char in k=%s",k.getc(3));
//  lower case 
$display("lowercase in i=%s",i.tolower());
// upper case
$display("uppercase in t=%s",t.toupper());
//compare the string case sensitive
if(a.compare(h)==0)
$display("string is equal");
else
$display("not equal");
//compare the string case insensitive
if(k.icompare(i)==0)
$display("string is equal");
else
$display("not equal");
//compare and return the ascii value
ascii=a.compare(k);
$display("ascii value=%0d",ascii);
//return the substring  
substring=s.substr(0,4);
$display("substring=%s",substring);
//string concatenation
  concatenation={k," ","VILLAN"," ",a," ","HERO"};
  $display("string concatenation=%s",concatenation);
end 
endmodule
OUTPUT:
# KERNEL: s=GOOD MORNING,a=kamal,k=rajni,t=ajith
# KERNEL: length of s=12
# KERNEL: assign char in v=sivi
# KERNEL: return a char in k=n
# KERNEL: lowercase in i=rajni
# KERNEL: uppercase in t=AJITH
# KERNEL: string is equal
# KERNEL: string is equal
# KERNEL: ascii value=-1
# KERNEL: substring=GOOD 
# KERNEL: string concatenation=rajni VILLAN kamal HERO
