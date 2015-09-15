import std.stdio, std.algorithm;
import std.conv, std.range;


bool pal_str(string s){

	string f = s.retro.to!string;

	if(f==s)
		return true;
	return false;
}


bool palindrom(int n){
	
	int[] arr;
	int[] brr;

	while(n){
		arr~=n%10;
		n/=10;
	}
	brr = arr.dup;
	if(brr == arr.reverse)
		return true;
	return false;
}

string binary(int n) {
	string num;
	const int size = n.sizeof*8;
	bool s;
	for(auto a = 0;a<size;a++){
		bool bit=cast(bool)(n>>(size-1));
		if(bit) 
			s=true;
		if(s)
			num~=bit+'0';
		n<<=1;
	}
	if(!num.length)
		num~='0';

	return num;
}

void main(){

	int[] a;
	
	foreach(i;1..1000000){
		if(palindrom(i) && pal_str(binary(i)))
			a~=i;
	}
	
	
	writeln(a.sum);
}
