import std.stdio, std.algorithm;


bool prim_t(long n){
	
	if(n<2)
		return false;
		
	for(auto i=2; i*i<=n;++i)
		if(!(n%i))
			return false;
	return true;
}

void main(){

	int count;
	int[] prims;
	prims~=2;
	
	for(auto i = 3 ; i<1000000 ; i+=2)
		if(prim_t(i))
			prims~=i;
	
	foreach(i;prims){
	
		int c;
		int[] t;
		int z = i;
		while(z){
			t~=z%10;
			z/=10;
			c++;
		}
		t.reverse;
		int[] circ;
		
		while(c>1){
			
			int temp = t[0];
			for(int k; k<t.length-1;++k)
				t[k]=t[k+1];
			t[t.length-1] = temp;
			
			int num;
			foreach(j;t)
				num = 10*num + j;
			circ~=num;
			c--;
		}
		bool circ_num = true;
		
		foreach(j;circ)
			if(!prim_t(j)){
				circ_num = false;
				break;
			}
			if(circ_num)
				count++;
	}

	writeln(count);
}
