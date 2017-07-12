import std.stdio, std.algorithm;


void main(){
	ulong sum;

	int[] d = [0,1,2,3,4,5,6,7,8,9];

	do{
		int n2,n3,n5,n7,n11,n13,n17;
		
		n2  = 100*d[1]+10*d[2]+d[3];
		n3  = 100*d[2]+10*d[3]+d[4];
		n5  = 100*d[3]+10*d[4]+d[5];
		n7  = 100*d[4]+10*d[5]+d[6];
		n11 = 100*d[5]+10*d[6]+d[7];
		n13 = 100*d[6]+10*d[7]+d[8];
		n17 = 100*d[7]+10*d[8]+d[9];
		
		int rest = n2%2+n3%3+n5%5+n7%7+n11%11+n13%13+n17%17;
		
		if(!rest){
			ulong num;
			foreach(i;d)
				num = 10*num+i;
			sum+=num;
		}
	}
	while(nextPermutation(d));

	writeln(sum);
}
