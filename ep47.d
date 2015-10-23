import std.stdio, std.array, std.algorithm;


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


bool div_four(int n, const ref int[] P){
	
	int[] v;
	
	for(int i; P[i]*P[i]<=n;++i){
		while(n%P[i]==0){
			v~=P[i];
			n/=P[i];
		}
	}
	if(n>1)
		v~=n;
		
	int [] prim_factors = v.dup.sort.uniq.array;
	
	if(prim_factors.length==4)
		return true;
	return false;

}

void main(){

	int[] prims = prim_sieve(1000);
	
	for(int i;true;++i){
		if(div_four(i,prims) && div_four(i+1,prims) && div_four(i+2,prims) && div_four(i+3,prims)){
			writeln(i);
			break;
		}
	}

}
