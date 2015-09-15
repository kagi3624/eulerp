import std.stdio;

bool t_prim(int n){

	if(n<2)
		return false;

	for(auto i = 2; i*i<n;++i)
		if(!(n%i))
			return false;
	return true;

}


void main(){

	int num = 3;
	bool stop = false;
	int[] prims = [2];
	
	while (num < 1000000){
		
		for(auto i = 2; i*i<=num; i++){
			if(!(num%i)){
				stop = true;
				break;
			}
		}
		if(stop == true){
			stop = false;
			num +=2;
		}
		else{
				prims~=num;
				num +=2;
		}
	}
	
	int sum;
	size_t st_i, en_i;
	ulong count;
	int answer;
	
	while(st_i<20){
		while (!t_prim(sum)){
			sum = 0;
			en_i++;
			for(auto i = st_i; i<prims.length-en_i && sum+prims[i]<1000000 ;++i)
				sum+=prims[i];
		}
		if(prims.length-en_i-st_i>count){
				count = prims.length-en_i-st_i; 
				answer = sum;
		}
		st_i++;
		writeln(st_i);
		sum = 0;
		en_i = 0;
	}	
	writeln(answer);
}
