import std.stdio;



void main(){
	
	int[1000000] a;

	int inx;
	int num=1;
	
	while(inx<a.length){
		
		int[] s;
		int t = num;
		while(t){
			s~=t%10;
			t/=10;
		}	
		s.reverse;
		
		foreach(i;s){
			if(inx>a.length-1)
				break;
			a[inx]=i;
			inx++;
		}
		num++;
	}
	
	writeln(a[0]*a[9]*a[99]*a[999]*a[9999]*a[99999]*a[999999]);
}
