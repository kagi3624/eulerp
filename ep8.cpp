#include <iostream>
#include <string>
#include <fstream>
#include <vector>

int main(){

	long long int answer = 0;

	std::vector<int> v;
	std::string line, s;
	std::ifstream myfile ("ep8.txt");
	
	if (myfile.is_open()){
    while (getline (myfile,line)){
      for(size_t i = 0;i<line.length();++i){
      	s=line[i];
      	v.push_back(stoi(s));
      }
    }
    myfile.close();
  }
	
	int start = 0;
	int end   = 13;
	long long int product = 1;
	bool zero = false;
	
	while(end<=v.size()){
		for(int i = start; i<end;++i){
			if(!v[i]){
				start = i + 1;
				end   = start + 13;
				product = 1; 
				zero = true;
				break;
			}
			product *=v[i];
		}
		if(zero){
			zero = false;
			continue;
		}
		if(product>answer)
			answer = product;
		++start;
		++end;
		product = 1;
	}
	
	
	std::cout<<answer<<'\n';
}
