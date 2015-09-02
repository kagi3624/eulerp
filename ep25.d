import std.stdio;
import std.bigint;

int digs(BigInt n){

	int count;
	while(n/10){
		count++;
		n=n/10;
	}
	return count+1;

}

void main(){
	
	BigInt first = 1;
	BigInt second = 1;
	BigInt temp; 
	int index = 1;
	
	while(digs(first)<1000){
		index++;
		temp = first + second;
		
		first = second;
		second = temp;
		
	
	}

	writeln(index," " , first);
}
