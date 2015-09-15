import std.stdio, std.conv;

bool pan_t(string s){

	if(s.length>9)
		return false;

	for(auto i = 0; i<s.length; ++i)
	for(auto j = 0; j<s.length; ++j){
	
		if(i==j)
			continue;
		if(s[i]==s[j] || s[j] == '0')
			return false;
	}
	return true;
}


void main(){
	
	
	string answer;
	int num = 1;
	
	while(num<100000){
		string s;
		int n = 1;
	
		while(s.length<9){
			s~=to!string(num*n);
			n++;
		}
		if(pan_t(s) && s>answer)
			answer = s;
		++num;
	}
	answer.writeln;
}
