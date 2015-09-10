import std.stdio, std.algorithm, std.range; 


void main(){


int[] a = [1,2,3,4,5,6,7,8,9];


/*do{
	
	int p = (10*a[0]+a[1])*(100*a[2]+10*a[3]+a[4]);
	
    
 while (nextPermutation(a)); */


	writeln(a[0..3]);
	writeln(a[$-3..$]);
	writeln(a.take(3));
	writeln(a.drop(a.length-3));

}
