import std.stdio;


long odd(long n){
	return 3*n+1;
}

long even(long n){
	return n/2;
}

void main(){

	int [2] answer = [0,0]; 
	
	for(int i = 1; i<1000000;++i){
	
		long n = i;
		int count = 0;
		
		while(n!=1){
			
			if(n%2==0)
				n = even(n);
			else
				n = odd(n);
			count++;
		}
		if(count>answer[0]){
			answer[0]=count;
			answer[1]=i;
		}
	}
	writeln(answer);
}
