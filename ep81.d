import std.stdio;
import std.algorithm;
import std.array;
import std.conv;

void main() {
    auto a = File("ep81.txt")
             .byLine
             .map!(line => line.splitter(',').map!(to!int).array)
             .array;

for(size_t i; i<a.length-1; i++){
	
	a[i+1][0]=a[i][0]+a[i+1][0];
	a[0][i+1]=a[0][i]+a[0][i+1];
}
 

for(size_t i=1; i<a.length; i++)
for(size_t j=1; j<a.length; j++){
	
		int u = a[i][j]+a[i][j-1];
		int k = a[i][j]+a[i-1][j];
	
		if(u<k)
			a[i][j]=u;
		else
			a[i][j]=k;
}

		
    writeln(a[$-1][$-1]);
}
