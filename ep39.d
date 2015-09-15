import std.stdio;
import std.math;


void main(){

	int count;
	int answer;

	foreach(p;1..1000){

		int z;
		foreach(a;1..p)
		for(int b = a; b<p;++b){
			double c = sqrt(cast(real)(a*a+b*b));
			if(a+b+c==p)
				z++;
		}
		if(z>count){
			count = z;
			answer = p;
		}
	}
	writeln(answer);
}
