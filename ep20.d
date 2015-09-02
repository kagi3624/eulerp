import std.stdio;
import std.bigint;


void main(){

	BigInt a = 1;
	int sum = 0;
	
	for(auto i = 1; i<=100;++i){
	
		a*=i;
	
	}
	
	while(a/10){
		sum+=a%10;
		a = a/10;
		if(!(a/10)){
			a+=sum;
			break;
		}
	}
	writeln(a);
		
}
