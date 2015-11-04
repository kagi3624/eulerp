import std.stdio, std.array, std.algorithm, core.checkedint;

int [] prim_sieve(int n){

	bool [] T;
	T.length = n;
	T[0] = true;
	T[1] = true;
	
	for(int i = 2; i*i <= T.length-1;++i){
		for(int j = i*i;j<T.length; j+=i)
			T[j] =true;
	}
	int[] v;
	foreach(int i,t;T)
		if(t==false)
			v~=i;
	return v;
}

void main(){

	immutable int x = 50_000_000;

	int[] p = prim_sieve(8000);

	
	int[] nums;
	
	
	for(int i; p[i]*p[i]<x;++i)
	for(int j; p[j]*p[j]*p[j]<x;++j)
	for(int k; p[k]*p[k]*p[k]*p[k]<x;++k){
	
		bool overflow;
		
		int a = adds(p[i]*p[i], p[j]*p[j]*p[j], overflow);
		int sum = adds(a,p[k]*p[k]*p[k]*p[k], overflow);
		
		if(overflow || sum>x)
			continue;
		nums~= sum;
		
	}
	
	int[] arr = nums.dup.sort.uniq.array;
	
	writeln(arr.length);

}
