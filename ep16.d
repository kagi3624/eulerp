import std.stdio;
import std.bigint;


void main(){

	BigInt a = 2;
		
	a ^^= 1000;
	int sum = 0;
	
	
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
