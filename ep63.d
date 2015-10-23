import std.stdio, std.bigint;


int digs(BigInt a){

	int count;
	while(a){
		count++;
		a = a/10;
	}
	return count;
}



void main(){

	int c;
	
	for(BigInt i = 1; i<10; ++i)
	for(int n = 1; n<30; ++n){
	
		BigInt k = i^^n;
		
			if(digs(k) == n)
				c++;
	}
	writeln(c);
}
