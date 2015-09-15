import std.stdio, std.math;

bool pent(long n){

	real dummy;
	
	real x = (1+sqrt(cast(real)(1+24*n)))/6;

	modf(x,dummy);
	
	if(dummy!=x)
		return false;
	return true;
}

bool hex(long n){

	real dummy;
	
	real x = (1+sqrt(cast(real)(1+8*n)))/4;

	modf(x,dummy);
	
	if(dummy!=x)
		return false;
	return true;
}

void main(){

	for(long i = 286; true; ++i){
		
		long tri = (i*i+i)/2;
		
		if(pent(tri) && hex(tri)){
			writeln(tri);
			break;
		}
	}
}
