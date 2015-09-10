import std.stdio;

import std.math;

void main(){
	
	long[21][21] a;
	
	
	for(int i = 0; i<a.length;++i)
	for(int j = 0; j<a.length;++j){
	
		if(j==0 || i==0)
			a[i][j]=1;
		else
			a[i][j]=a[i-1][j]+a[i][j-1];
	}
		
		
	writeln(a[$-1][$-1]);
}
