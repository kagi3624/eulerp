import std.stdio;



void main(){

	int[1001][1001] a;
	
	int  i = 500;
	int  j = 500;
	int count = 1;
	
	a[i][j] = count;
	++j;
	++count;
	
	while(!(i==0 && j==a.length-1)){
		
		a[i][j]=count;
		++count;


		if(i == 0)
			j++;
		else if(j == 0)
			i--;
		else if(i==a.length-1)
			j--;
		else if(j==a.length-1)
			i++;
		else if(a[i+1][j] && !a[i][j+1])
			j++;
		else if(a[i][j+1] && !a[i-1][j])
			i--;
		else if (a[i-1][j] && !a[i][j-1])
			--j;
		else
			++i;
	}

	a[i][j] = count;
	
	long sum;
		
	for(auto k = 0; k<a.length;k++)
		sum+=a[k][k];
	for(auto l = 0; l<a.length;l++){
		if (a.length-1 -l == l)
			continue; 
		sum+=a[a.length-1-l][l];
	}
	writeln(sum);
}
