import std.stdio, std.bigint;


void main(){

	BigInt A_1 = 1, A_2 = 0;
	BigInt B_1 = 0, B_2 = 1; 

	BigInt A, B;
	
	int sum;

	foreach(int i; 0..100){
	
	int a = 1;
		
		if(i==0)
			a = 2;
		if((i+1)%3==0){
			a = (i+1)/3*2;
		}
	
	A = a*A_1+A_2;
	B = a*B_1+B_2;
	
	A_2 = A_1;
	A_1 = A;
	
	B_2 = B_1;
	B_1 = B;
	
	}
	while(A){
		sum += A%10;
		A = A/10;
	}
	
	writeln(sum);
}	
