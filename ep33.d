import std.stdio; 
 
 
void main(){ 
int[9] v; 
for(auto i = 0; i<v.length;++i) 
	v[i] = i+1;
	int nominator;
	int denominator; 
	double rel1; 
	double rel2; 
	for(auto i = 0; i<v.length;++i) 
	for(auto j = 0; j<v.length; ++j){ 
		nominator = v[j] * 10 + v[i]; 
		for(auto k = 0; k<v.length;++k){ 
			denominator = v[i] * 10 + v[k]; 
		if(nominator>=denominator) 
			continue; 
		rel1 = cast(double)nominator/denominator; 
		rel2 = cast(double)v[j]/v[k];
			if(rel1 == rel2){ 
				writeln("\ni: ",v[i]," j: ", v[j], " k: ", v[k]);
				writeln("n: ", nominator);
				writeln("d: ", denominator); 
				writeln(rel1, " ", rel2);
			} 
		} 
	} 
}
