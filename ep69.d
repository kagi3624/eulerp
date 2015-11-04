import std.stdio, std.algorithm, std.array;

bool prim_t(int n){
	
	if(n<2)
		return false;
		
	for(auto i=2; i*i<=n;++i)
		if(!(n%i))
			return false;
	return true;
}

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

int[] prim_fac(int n, const ref int[] P){
	
	int[] v;
	
	for(int i; P[i]*P[i]<=n;++i){
		while(n%P[i]==0){
			v~=P[i];
			n/=P[i];
		}
	}
	if(n>1)
		v~=n;
		
	return  v.dup.sort.uniq.array;
}



int totient(int n, const ref int[] P){
	int [] arr = prim_fac(n, P);
	
	int nom = 1, denom = 1;
	
	foreach(i;arr){
		denom *=i;
		nom *=i-1;
	}
	
	return n/denom*nom;
}

void main(){

	int[] prims = prim_sieve(1000000);

	double d = 0.0;
	int answer;
	
	foreach(i;2..1000001){
		if(prim_t(i))
			continue;
		double q = cast(double)i/totient(i, prims);
		if(q>d){
			d=q;
			answer = i;
		}
	}
	writeln("Answer: ",answer);
}
