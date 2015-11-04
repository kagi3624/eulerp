import std.stdio, std.algorithm;


bool prim_t(int n){

	for(auto i = 2; i*i<=n;i++)
		if(!(n%i))
			return false;
	return true;
}


void main(){
	int answer;
	int[] a = [1,2,3,4,5,6,7,8,9];
	bool found;
	
	while(a.length>0){
		int num;
		do{	
			foreach(i;a)
				num = num * 10 + i;
			if(prim_t(num) && num>answer){
				answer = num;
				found = true;
			}
			num = 0;
		}
		while(nextPermutation(a));
	
		if(found){
			writeln(answer);
			break;
		}
		a = a[0..$-1];
	}
}
