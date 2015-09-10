import std.stdio;
import std.bigint;
import std.math;

void main(){

	BigInt sum = 0;
	BigInt start = 1;
	int exp = 1;
	
	while(exp<1001){
	
		sum+=start^^exp;
		++start, ++exp;
	}

	int[] a;
	int[] b;
	for(int i = 0; i<10;++i){
		a~=sum%10;
		sum=sum/10;
	}
	
	while(a.length>0){
		b~=a[$-1];
		a=a[0..$-1];	
	}
	foreach(int i;b)
		write(i);
	write('\n');
}
