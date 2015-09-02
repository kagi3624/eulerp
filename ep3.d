import std.stdio;
import std.math;

long[] prim_numbers(long N){


	long[] v;
	v.length = N;
	v[2] = 1;

	for(auto i = 1; 2*i+1<=N;++i)
		v[2*i+1]=1;
		
	long sr= cast(int)sqrt(cast(double)N);
		
	for(auto i = 0;i<sr ;++i){
		if(v[i])
		for(auto j = 0; i*i+j*i<N;++j)
	 		v[i*i+j*i] = 0;
	}

	long[] s;
	for(auto i = 0; i<v.length;++i)
		if(v[i]) s~=i;
	return s;
}

void main(){
	long N = 600851475143L;
	long[] primes = prim_numbers(10000000);
	long[] factors;

	
	
	foreach(long i;primes)
		if(N%i == 0)
			factors~=i;
	writeln(factors);
}
