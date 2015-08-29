import std.stdio; 

int ties(int n){
	if(n==10)
		return 3;
	if(n==20 || n==30 || n==80 || n==90)
		return 6;
	if(n==40 || n==50 || n==60)
		return 5;
	else
		return 7;
}	

int one_dig(int n){
	
	if(n/10){
		writeln("Number not single digit!");
		return 0;
	}

	if(n==1 || n==2 || n==6)
		return 3;
	if(n==4 || n==5 || n==9)
		return 4;
	else{
		return 5;
	}
}

int two_dig(int n){
	
	int first_dig = n%10;
	
	if(!(n/10))
		return one_dig(n);
	
	if(n==11 || n==12)
		return 6;
	if(n==13 || n==14 || n==18 || n==19)
		return 8;
	if(n==15 || n==16)
		return 7;
	if(n==17)
		return 9;


	if(!first_dig)
		return ties(n);
	else
		return ties(n/10*10)+one_dig(first_dig);
}

int hundreds(int n){

	if(n==1000)
		return 11;
	if(!(n/100))
		return two_dig(n);

	int rest = n%100;
	
	if(!rest)
		return one_dig(n/100) + 7;
	else
		return one_dig(n/100) + 10 + two_dig(n%100);

}

void main(){

	int sum = 0;
	for(auto i = 1; i<=1000; ++i)
		sum+=hundreds(i);
	writeln(sum);
}
