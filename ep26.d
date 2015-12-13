import std.stdio;

ulong find_cycle(int n){

	int nom = 1;
	
		
	int [] arr;
	
	while(true){
		arr ~= nom;
		while(nom<n)
			nom *=10;
		
		nom = nom % n;
		
		if(!nom)
			return arr.length;
		foreach(int i, int j;arr)
			if(j==nom){
				return arr.length - i;
			}
	}
}

void main(){

	int d;
	ulong cycle;
	foreach(int i; 2..1000){
		auto z = find_cycle(i);
		if(z>cycle){
			cycle = z;
			d = i;
		}
	}
	writeln(d);
}
