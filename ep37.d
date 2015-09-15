import std.stdio;

bool prim_t(long n){
	
	if(n<2)
		return false;
		
	for(auto i=2; i*i<=n;++i)
		if(!(n%i))
			return false;
	return true;
}


bool trunc(long n){

	int[] a;
	long[] t;
	
	while(n){
		a~=n%10;
		n/=10;
	}
	int j=1;
	while(a.length-j>0){
		long num;
		for(auto i = a.length-j;i>0;i--){
			if(!a[i])
				return false;
			num = 10*num+a[i-1];
		}
		t~=num;
		++j;
	}
	int k=1;
	while(k<a.length){
		long num;
		int m = 1;
		for(auto i = k;i<a.length;++i){
			num = num + m*a[i];
			m*=10;
		}
		t~=num;
		++k;
	}
	foreach(i;t)
		if(!prim_t(i))
			return false;
	return true;
}


void main(){

	long i = 11;
	int count;
	long sum;
	
	while(count<11){
		
		while(!prim_t(i)){
			i+=2;
		}
		if(trunc(i)){
			++count;
			sum+=i;
		}
		i+=2;
	}
	writeln(sum);
}
