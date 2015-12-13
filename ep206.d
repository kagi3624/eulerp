import std.stdio, std.math, std.conv;


void main(){

L1:foreach_reverse(i;0..10)
	foreach_reverse(j;0..10)
	foreach_reverse(k;0..10)
	foreach_reverse(l;0..10)
	foreach_reverse(m;0..10)
	foreach_reverse(n;0..10)
	foreach_reverse(o;0..10)
	foreach_reverse(p;0..10)
	foreach_reverse(q;0..10){
		
		int [19] arr = [1,i,2,j,3,k,4,l,5,m,6,n,7,o,8,p,9,q,0];
		
		ulong z;
		
		for(auto v=0; v<arr.length;++v)
			z = z*10+arr[v];
			
		//writeln(z);
		real sq = sqrt(real(z));			
		real integral;
		
		modf(sq,integral);
		
		if(sq-integral==0){
			writeln(to!ulong(integral));
			break L1;			 
		}
	}

}
