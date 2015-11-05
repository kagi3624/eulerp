import std.stdio;


ulong binom(int n, int k){
	
	if(k==1)
		return 1;
	if(2*k>n)
		return binom(n,n-k);
	ulong result = n - k + 1;
	foreach(i;2..k+1)
		result = (result * (n - k + i))/i;

	return result;
}


void main(){

	ulong answer;
	
	foreach(int n;1..101)
	for(int r = 1; r<=n ; ++r){
		ulong t = binom(n,r);
		if(t>1000000)
			answer++;
	}
	writeln(answer);
}
