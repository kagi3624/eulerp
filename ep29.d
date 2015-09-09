import std.stdio, std.bigint;
import std.algorithm, std.array;

void main() {
		BigInt[] arr;
		BigInt[] r;
    
    foreach(a;2..101)
    foreach(b;2..101)
    	arr~=BigInt(a)^^b;
   
    r = arr.sort.uniq.array;
    r.length.writeln;
}
