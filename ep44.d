import std.stdio;
import std.math;


bool test (int P){

	real dummy;
	real n = (1+sqrt(1+24*cast(double)P))/6;
	
	modf(n,dummy);
	
	if(n-dummy==0)
		return true;
	else
		return false;


}

void main(){

	bool found = false;
	int[] a;
	
	for(int i = 1;i<10000;++i)
		a~=i*(3*i-1)/2;
	
	for(auto i = 0;i<a.length-1;++i){
		for(auto j = i+1;j<a.length;++j){

			int sum = a[i]+a[j];
			if(test(sum)){

				int dif = a[j]-a[i];
				if(test(dif)){
					writeln(abs(a[j]-a[i]));
					found = true;
					break;
				}
			}
		}
		if(found == true)
			break;
	}
}
