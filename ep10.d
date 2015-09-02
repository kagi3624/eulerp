import std.stdio;
import std.math;


void main(){

	const int N = 2000000;

	int[N] v;
	v[2] = 1;

	for(int i = 1; 2*i+1<=N;++i)
		v[2*i+1]=1;
		
	int sr= cast(int)sqrt(cast(double)N);
		
	for(int i = 0;i<sr ;++i){
		if(v[i])
		for(int j = 0; i*i+j*i<N;++j)
	 		v[i*i+j*i] = 0;
	}
	long sum = 0;
	
	for(int i = 0;i<v.length;++i)
		if(v[i])
			sum+=i;
	writeln(sum);
}
