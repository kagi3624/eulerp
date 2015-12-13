import std.stdio, std.string, std.algorithm;
import std.conv, std.range, std.bigint;

bool is_palindromic(string s){
	
	if(!s.length)
		return false;
	
	string f = s.retro.to!string;

	if(f==s)
		return true;
	return false;


}

BigInt rev(BigInt n){

	BigInt r;
	
	while(n){
		r = r*10 + n%10;
		n/=10;
	}
	return r;
}


bool is_Lychrel(int n){

	int count;
	BigInt p = to!BigInt(n);
	
	while(count<50){
		p = p + rev(p);
		if(is_palindromic(to!string(p)))
			return false;
		++count;
	}
	return true;
}


void main(){
	
	
	int count;
	
	foreach(i;1..10000)
		if(is_Lychrel(i))
			count++;
	writeln(count);
}
