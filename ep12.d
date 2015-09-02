import std.stdio;


void main(){

	int n = 1;
	long sum;
	int count = 0;
	
	while(count<=500){
	
		sum = (n*n+n)/2; 
	
		for(auto i = 1; i<=sum;++i){
			if(!(sum%i))
				count++;
		}		
		n++;
		if(count<500){
			writeln(sum," ",count);
			count = 0;
		}
	}
	writeln(sum);
}
