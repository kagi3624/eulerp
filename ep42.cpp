#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <math.h>




int main(){

	int count = 0;

	std::string line;
  std::vector<std::string> words;
  std::ifstream myfile ("ep42.txt");
  if (myfile.is_open()){
    while ( getline (myfile,line,',')){
    	line.erase(0,1);
      line.erase(line.length()-1);
      words.push_back(line);
    }
    myfile.close();
	}

  else std::cout << "no such file"; 

	for(int i = 0;i<words.size();++i){
		int sum = 0;
		for(int j = 0;j<words[i].length();++j)
			sum+=(int)words[i][j]-64;
			
		double fractpart, intpart;
		double d = (sqrt((double)8*sum+1)-1)/2;
		fractpart = modf (d , &intpart);
		
		if(intpart - fractpart == d)
			count++;
	}

	std::cout<<count<<'\n';
}
