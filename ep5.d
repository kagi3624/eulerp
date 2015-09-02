import std.stdio;


void main(){

	int[] seq = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];
	int[] prims = [2,3,5,7,11,13,17,19];
	int[] prim_divs;
	bool dividable = false;
	int j = 0;

	
	while(j<prims.length){
		for(auto i = 0; i<seq.length; i++){
	
			if(seq[i]%prims[j]==0){
				seq[i] = seq[i]/prims[j];
				dividable = true;
			}
		}
		if(dividable){
			dividable = false;
			prim_divs ~=prims[j];
		}
		else
			j++;
	}
	long product = 1;
	
	writeln(prim_divs);
	
	foreach(i;prim_divs)
		product *= i;
	writeln(product);
}
