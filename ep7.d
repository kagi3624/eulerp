import std.stdio;


void main(){

	long count_prim = 1;
	long num = 3;
	bool stop = false;
	
	while (count_prim != 10001){
		
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
				count_prim++;
				writeln(num);
				num +=2;
		}
	}
	writeln("Answer: ", num-2);
}


