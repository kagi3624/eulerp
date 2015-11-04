import std.stdio, std.algorithm, std.array;


bool prim_t(ulong n){
	
	if(n<2)
		return false;
		
	for(auto i=2; i*i<=n;++i)
		if(!(n%i))
			return false;
	return true;
}

ulong [] prim_sieve(ulong n){

	bool [] T;
	T.length = n;
	T[0] = true;
	T[1] = true;
	
	for(ulong i = 2; i*i <= T.length-1;++i){
		for(ulong j = i*i;j<T.length; j+=i)
			T[j] =true;
	}
	ulong[] v;
	foreach(ulong i,t;T)
		if(t==false)
			v~=i;
	return v;
}

ulong[] prim_fac(ulong n, const ref ulong[] P){
	
	ulong[] v;
	
	for(ulong i; P[i]*P[i]<=n;++i){
		while(n%P[i]==0){
			v~=P[i];
			n/=P[i];
		}
	}
	if(n>1)
		v~=n;
		
	return  v.dup.sort.uniq.array;
}

ulong totient(ulong n, const ref ulong[] P){
	ulong [] arr = prim_fac(n, P);
	
	ulong nom = 1, denom = 1;
	
	foreach(i;arr){
		denom *=i;
		nom *=i-1;
	}
	
	return n/denom*nom;
}

void main(){
	
	ulong[] prims = prim_sieve(500);
	
		ulong p = 2;
		ulong i = 1;
		double lim = 15499./94744;
		
		while(totient(p,prims)/cast(double)(p-1)>=lim){
			p*=prims[i];
			i++;
		}
		
		p = p/prims[i-1];
		
		for(ulong j = 2; j<prims[i-1]; j++){
			double d = totient(p*j,prims)/cast(double)(p*j-1);
			if(d<lim){
				writeln(p*j);
				break;
			}
		}
}
