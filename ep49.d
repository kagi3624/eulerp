import std.stdio;
import std.algorithm;
import std.math;


bool test(int a, int b, int c){

	int [] A;
	int [] B;
	int [] C;
	
	while(a){
	
		A~=a%10;
		a=a/10;
	}
	while(b){
	
		B~=b%10;
		b=b/10;
	}
	while(c){
	
		C~=c%10;
		c=c/10;
	}

	sort(A);
	sort(B);
	sort(C);
	
	if(A == B && A == C && B == C) 
		return true;
	return false;
}



void main(){

	int num = 1001;
	bool stop = false;
	int[] prims;
	
	while (num < 9999){
		
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
	
	for(auto i = 0; i<prims.length-2;++i){
		for(auto j = i+1; j<prims.length-1;++j){
			int sum1=prims[j]-prims[i];
			for(auto k = j+1;k<prims.length;++k){
				int sum2 = prims[k]-prims[j];
				if(sum1==sum2 && test(prims[i],prims[j],prims[k]))
					writeln(prims[i]," " ,prims[j], " ",prims[k]);
			}
		}
	} 
}

