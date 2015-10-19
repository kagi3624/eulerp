import std.stdio, std.algorithm, std.math;

//tests
/*
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
}*/

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

int [] tri2(int st, int end){
	
	int[] A;

	int n = 1;
	int p = 1;
	
	while(p<end){
	
		if(p>=st) A~=p;
		++n;
		p = n*(n+1)/2;
	}
	return A;
}

int [] sqr2(int st, int end){
	
	int[] A;

	int n = 1;
	int p = 1;
	
	while(p<end){
	
		if(p>=st) A~=p;
		++n;
		p = n*n;
	}
	return A;
}

int [] pen2(int st, int end){
	
	int[] A;

	int n = 1;
	int p = 1;
	
	while(p<end){
	
		if(p>=st) A~=p;
		++n;
		p = n*(3*n-1)/2;
	}
	return A;
}

int [] hex2(int st, int end){
	
	int[] A;

	int n = 1;
	int p = n*(2*n-1);
	
	while(p<end){
	
		if(p>=st) A~=p;
		++n;
		p = n*(2*n-1);
	}
	return A;
}

int [] hep2(int st, int end){
	
	int[] A;

	int n = 1;
	int p = 1;
	
	while(p<end){
	
		if(p>=st) A~=p;
		++n;
		p = n*(5*n-3)/2;
	}
	return A;
}

int [] oct2(int st, int end){
	
	int[] A;

	int n = 1;
	int p = 1;
	
	while(p<end){
	
		if(p>=st) A~=p;
		++n;
		p = n*(3*n-2);
	}
	return A;
}


void main(){

	int [] a_tri, a_sqr, a_pen, a_hex, a_hep, a_oct;
	
	int start = 1000, end = 10000;
	
	a_tri = tri2(start,end);
	a_sqr = sqr2(start,end);
	a_pen = pen2(start,end);
	a_hex = hex2(start,end);
	a_hep = hep2(start,end);
	a_oct = oct2(start,end);

	int [][] A = [a_tri,a_sqr,a_pen,a_hex,a_hep,a_oct];
	A.sort();
	bool found = false;
	
	do{
	
	foreach(a;A[0])
	foreach(b;A[1]){
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
							int [] B = [a,b,c,d,e,f];
							writeln("sum: ",B.sum);
							found = true;
						}
	}
	if(found)
		break;
	}
	while(nextPermutation(A));
	
}
