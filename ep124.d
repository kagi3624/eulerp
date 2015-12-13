import std.stdio, std.array, std.algorithm;


int product(const ref int[] arr){

	int p = 1;
	foreach(i;arr)
		p*=i;
 	return p;
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

int[] prim_factors(int n, const ref int[] P){
	
	int[] v;
	
	for(int i; P[i]*P[i]<=n;++i){
		while(n%P[i]==0){
			v~=P[i];
			n/=P[i];
		}
	}
	if(n>1)
		v~=n;
		
	return v.dup.sort.uniq.array;

}


void bubblesort(ref int[2][] v){

	size_t n = v.length;
	do{
		int newn = 1;
		for(int i = 0;i<n-1; ++i){
			if(v[i][1]>v[i+1][1]){
				auto temp = v[i];
				v[i] = v[i+1];
				v[i+1] = temp;
				newn = i+1;
			}
		}
		n=newn;	
	}
	while(n>1);
}



void main(){
	
	int[] P = prim_sieve(500);
	
	int[2][] v;
	
	foreach(k;1..100001){
		auto t = prim_factors(k,P);
		v~= [k,product(t)];
	}
	
	bubblesort(v);
	
	writeln(v[9999][0]);
}
