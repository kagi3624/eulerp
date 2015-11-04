#include <iostream>
#include <algorithm>
#include <vector>
#include <string>
#include <map>


int main(){
	
	std::map<std::string,int> M;
	std::map<std::string,uint64_t> m;
	
	int count = 0;
	uint64_t i = i;
	
	while(true){
		++i;
		std::string s;

		uint64_t z = i*i*i;
		s = std::to_string(z);
		std::sort(s.begin(),s.end());
		++M[s];
		if(M[s]==1){
			m[s] = z;
		}
		if(M[s]>=5){
			std::cout<<m[s]<<'\n';
			break;
		}
	}
}
