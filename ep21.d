import std.stdio;

int sum_div(int n){

	int sum = 0;
	
	for(int i = 1; i<n;++i)
		if(!(n%i))
			sum+=i;
	return sum;
}

void main(){
	
	int[10000] a;
	
	for(auto i = 0;i<a.length;++i){
		if(!a[i] && i+1 !=sum_div(i+1) && i+1 == sum_div(sum_div(i+1))){
			a[i] = 1;
			a[sum_div(i+1)-1]=1;		
		}
	}
	int sum = 0;
	for(int i = 0; i<a.length;++i)
		if(a[i])
			sum+=i+1;
	writeln(sum);

}
