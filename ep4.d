import std.stdio;
import std.math;

int rev_number(int n){
	
	int rev_number = 0;
	
	while(n){
	
		rev_number = rev_number*10+(n%10); 
		n=n/10;
	}
	return rev_number;
}



void main(){

	int answer = 0;
	int palindrom;


	for(auto i = 999; i>99;--i)
	for(auto j = 999; j>99;--j){ 
		palindrom = i*j;
		if(palindrom == rev_number(palindrom) && palindrom>answer){
			answer = palindrom;
		}
	}
	writeln(answer);
}
