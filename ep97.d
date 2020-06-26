import std.stdio;

void main(){


	int[10] a;
	int z;

	a[9] = 2;
	for(auto j = 0; j<7830457-1; ++j){  
		int t = 0;
		for(int i = a.length; i--> 0;){
			z = a[i] + a[i]+t;
			if(z >9)
				t = z/10;
			else 
				t = 0;
			a[i] = z%10;
		}
	}
	ulong sum;
	foreach(int e; a)
		sum = e + sum*10;
	sum = sum * 28433 + 1;
	writeln(sum % (10^^10uL));

}
