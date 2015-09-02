import std.stdio;
import std.file;
import std.bigint;


void main() {
		
		BigInt[] nums;

    auto f = File("ep13.txt");

    foreach (line ; f.byLine) {
        nums ~= cast(BigInt)line.idup;
    }
    f.close();
    
    BigInt sum = 0;
    
    foreach(BigInt i;nums)
    	sum +=i;
    
    int count = 0;
    BigInt temp = sum;
   
   	while(temp/10){
   		temp = temp/10;
   		count++;
   	}
   	
   	for(auto i = 0; i<=41;++i)
   		sum=sum/10;
   	
   	writeln(sum);
}

