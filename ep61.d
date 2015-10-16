import std.stdio, std.algorithm, std.math;

bool tri(int n){

	real dummy;
	
	real x = (sqrt(cast(real)(8*n+1))-1)/2;

	modf(x,dummy);

	if(dummy!=x)
		return false;
	return true;
}

bool sqr(int n){

	real dummy;
	
	real x = sqrt(cast(real)(n));

	modf(x,dummy);

	if(dummy!=x)
		return false;
	return true;

}

bool pen(int n){

	real dummy;
	
	real x = (1+sqrt(cast(real)(1+24*n)))/6;

	modf(x,dummy);
	
	if(dummy!=x)
		return false;
	return true;
}

bool hex(int n){

	real dummy;
	
	real x = (1+sqrt(cast(real)(1+8*n)))/4;

	modf(x,dummy);
	
	if(dummy!=x)
		return false;
	return true;
}

bool hep(int n){

	real dummy;

	real x = (3+sqrt(cast(real)(9+40*n)))/10;

	modf(x,dummy);
	
	if(dummy!=x)
		return false;
	return true;
}

bool oct(int n){

	real dummy;

	real x = (1+sqrt(cast(real)(1+3*n)))/3;

	modf(x,dummy);
	
	if(dummy!=x)
		return false;
	return true;
}

bool connected(int x, int y){

	int xl1 = x%10;
	x = x/10;
	int xl2 = x%10;
	
	y = y/100;
	
	int yf2 = y%10;
	int yf1 = y/10;
	
	if(xl1==yf2 && xl2 == yf1)
		return true;
	return false;

}

void main(){

	int [] a_tri, a_sqr, a_pen, a_hex, a_hep, a_oct;

	foreach(int i; 1000..10000){
		if(tri(i)) a_tri ~=i;
		if(sqr(i)) a_sqr ~=i;
		if(pen(i)) a_pen ~=i;
		if(hex(i)) a_hex ~=i;
		if(hep(i)) a_hep ~=i;
		if(oct(i)) a_oct ~=i;
	}

	int [][] A = [a_tri,a_sqr,a_pen,a_hex,a_pen,a_oct];
	bool found = false;
	
	do{
	
	foreach(a;A[0]){
	foreach(b;A[1])
		if(connected(a,b))
			foreach(c;A[2])
			if(connected(b,c))
				foreach(d;A[3])
				if(connected(c,d))
					foreach(e;A[4])
					if(connected(d,e))
						foreach(f;A[5])
						if(connected(e,f) && connected(f,a)){
							writeln(a," ",b," ",c," ",d," ",e," ",f);
							writeln("sum: ",a+b+c+d+e+f);
							found = true;
						}
	}
	//if(found)
	//	break;
	}
	while(nextPermutation(A));
}
