import std.stdio;

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

bool prim_t(long n){
	
	if(n<2)
		return false;
		
	for(auto i=2; i*i<=n;++i)
		if(!(n%i))
			return false;
	return true;
}

int[] odd(int n){
	
	int [] v;

	for(int i = 1; true;++i){
		int g  = 2*i+1;
		if(g>=n)
			break;
		if(!prim_t(g))
			v~=g;
	}
	return v;
}

void main(){

	int []prims = prim_sieve(10000); 
	int []v = odd(10000);
	bool stop = false;
	
	foreach(i;v){
		bool found;
		for(int j = 0; prims[j]<i;++j){
	
			int m = 1;
			
		
			int z;  
			do{
				z = prims[j] + 2*m*m;  
				if(z == i){
					found = true;
					break;
				}
				m++;
			}
			while(z<i);
			if(found)
				break;
		}
		if(!found){
			writeln(i);
			break;
		}
		else
			found = false;
	}
}
