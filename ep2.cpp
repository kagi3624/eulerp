#include <iostream>

int main(){

	int sum = 0;

	int first = 1;
	int second = 2;
	
	int temp;
	
	while(second < 4000000){
	
		if(second % 2 == 0)
			sum += second;
		
		temp = first + second;
		
		first = second;
		second = temp;
	
	}
	
	

	std::cout<<sum<<'\n';

}
