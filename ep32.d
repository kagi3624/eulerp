import std.stdio, std.algorithm, std.array;

void main(){

	int[] n = [1,2,3,4,5,6,7,8,9];
	int[] v;
	
	do{
		
		int i;
		
		while(i<n.length-2){
			int j = i+2;
			int a;
			for(int k; k<=i;++k)
				a = 10*a + n[k];
			while(j<n.length-1){
				int b,c;
				for(auto l = i+1; l<=j;++l)			
					b = 10*b + n[l];

				for(auto m = j+1;m<n.length;++m)
					c = 10*c + n[m];
				if(a*b == c){
					v ~= c;	
				}
				writeln(a," ", b, " ", c);
				++j;
			}
			++i;
		}
	}
	while(nextEvenPermutation(n));
	
	int[] arr = v.sort.uniq.array;
	writeln(arr.sum());

}
