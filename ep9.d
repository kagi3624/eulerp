import std.stdio;

void main(){


	for(auto a = 1; a<1000; ++a)
	for(auto b = a+1; b<1000; ++b){
		
		auto c = 1000-a-b;
		
		if(a*a+b*b == c*c){
			writeln(a*b*c);
			break;
		}

	}
}
