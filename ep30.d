import std.stdio;
import std.math;

void main(){
	
	int sum = 0;

	for(int n = 10;n<1000000;++n){
	
		int temp = n;
		int s = 0;
		
		while(temp/10){
			s+=pow(temp%10, 5);
			temp /=10;
			if(temp/10 == 0)
				s+=pow(temp,5);
		}
		if(s==n){
			sum+=n;
			writeln(n);
		}
	}

	writeln('\n',sum);
}
