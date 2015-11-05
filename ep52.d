import std.stdio, std.bigint, std.algorithm, std.conv, std.string;


bool same_dig(BigInt a, BigInt b, BigInt c, BigInt d, BigInt e, BigInt f){

	auto s1 = to!string(a).dup.sort;
	auto s2 = to!string(b).dup.sort;
	
	if(s1!=s2)
		return false;
		
	auto s3 = to!string(c).dup.sort;
	if(s1!=s3)
		return false;
		
	auto s4 = to!string(d).dup.sort;
	if(s1!=s4)
		return false;
		
	auto s5 = to!string(e).dup.sort;
	if(s1!=s5)
		return false;
		
	auto s6 = to!string(f).dup.sort;
	if(s1!=s6)
		return false;
	
	return true;
}



void main(){

	for(BigInt i = 1; true; ++i){
	
		if(same_dig(i,2*i,3*i,4*i,5*i,6*i)){
			writeln(i);
			break;
		}
	}
}
