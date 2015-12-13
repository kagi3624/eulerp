import std.stdio;


bool prim_t(int n){

	for(auto i = 2; i*i<=n;i++)
		if(!(n%i))
			return false;
	return true;
}


void main(){

	int length, z = 1;
	int n,d = 1; 
	
	double ratio;

	for(int i = 2; true;i=i+2){
		for(int j; j<4; j++){
		z+=i; 
		if(prim_t(z))
			n++;
		d++;
		}
		ratio = double(n)/d;
		if(ratio<0.1){
			length = i+1;
			break;
		}
	}
	writeln(length);
}
