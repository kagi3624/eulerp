import std.stdio, std.bigint;

int dig_sum(BigInt n){

	int s;
	
	while(n){
		s+=n%10;
		n/=10;
	}

	return s;
}


void main(){

	int answer;
	
	foreach(a; 1..100)
	foreach(b; 1..100){
	
		BigInt k = a;
		k ^^= b;
		int t = dig_sum(k);
		if(t>answer)
			answer = t;
	}
	
	writeln(answer);

}
