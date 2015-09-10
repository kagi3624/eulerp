import std.stdio;

bool t_prim(int n){

	if(n<2)
		return false;

	for(int i = 2; i*i<=n;++i){
		if(!(n%i))
			return false;
	}
	return true;
}


void main(){
	
	int a, b; 
	int count;

	for(auto i = -999;i<1000;i++)
	for(auto j = -999;j<1000;j++){
		
		int n = 0;
		while(t_prim(n*n+i*n+j)){
			++n;
		}
		if(n>count){
			count = n;
			a = i;
			b = j;
		}
	}
	writeln(a, " " , b, " ", a*b);
}		
