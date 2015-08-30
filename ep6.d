import std.stdio;
import std.math;

void main(){


	ulong sum1 = 0;
	
	for(auto i = 1; i<=100;++i)
		sum1 += pow(i,2);
	ulong sum2 = pow((100*100+100)/2,2);
	writeln(sum1);
	writeln(sum2);
	writeln(sum2-sum1);

}
