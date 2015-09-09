import std.stdio;
import std.algorithm;
import std.math;


bool test_unq(int a, int b, int c){

	int [] A;
	int [] B;
	int [] C;
	
	bool [4] check1;
	bool [4] check2;

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
	
	for(auto i = 0; i<A.length;++i)
	for(auto j = 0; j<B.length;++j)
		if(A[i]==B[j])
			check1[i] = true;

	foreach(i;check1)
		if(i==false)
			return false;
			
	for(auto i = 0; i<A.length;++i)
	for(auto j = 0; j<C.length;++j)
		if(A[i]==C[j])
			check2[i] = true;
	
	foreach(i;check2)
		if(i==false)
			return false;
			
	return true;
}





void clear(ref int [] arr){

	int [] temp;
	
	for(int k = 0 ;k<arr.length;++k){
		int [] a;
		int n = arr[k];
		while(n){
	
			a~=n%10;
			n=n/10;
		}
		
		bool unique = true;
		for(auto i = 0; i<a.length-1;++i){
			bool stop = false;
			for(auto j = i+1; j<a.length;++j){
				
				if(a[i]==a[j]){
					stop = true;
					break;
				}
			}
			if(stop){
				unique = false;
				break;
			}
		}
		if(unique)
			temp ~=arr[k];
	}
	arr = temp;
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
	clear(prims);
	
	for(auto i = 0; i<prims.length-2;++i){
		for(auto j = i+1; j<prims.length-1;++j){
			int sum1=prims[j]-prims[i];
			for(auto k = j+1;k<prims.length;++k){
				int sum2 = prims[k]-prims[j];
				if(sum1==sum2 && test_unq(prims[i],prims[j],prims[k]))
					writeln(prims[i]," " ,prims[j], " ",prims[k]);
			}
		}
		
	} 
	

}

