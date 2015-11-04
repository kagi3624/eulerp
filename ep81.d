import std.file, std.stdio, std.string, std.conv, std.algorithm, std.array;

	void main(){
	
	int[5][5] t = [[131,673,234,103,18],[201,96,342,965,150],[630,803,746,422,111],[537,699,497,121,956],[805,732,524,37,331]];

	/*auto matrix = File("ep81.txt")
   		.byLine
   		.map!(l => l.split(",")      // Split each line
                 .map!(to!int)  // Turn into ints
                 .array)        // Return an array
 		  .array();
	
	for(auto i = 0; i<matrix.length-1;++i)
	for(auto j = 0; j<matrix[i].length-1;++j)
		if(matrix[i][j]+matrix[i][j+1]<matrix[i][j]+matrix[i+1][j])
			matrix[i][j+1] = matrix[i][j]+matrix[i][j+1];
		else
			matrix[i+1][j] = matrix[i][j]+matrix[i+1][j];*/
	
	t.writeln;
	
	int i;
	int j;
	
	while(i!=t.length-1 && j!=t.length-1){
	
		if(!j){
			t[i+1][j]=t[i+1][j]+t[i][j];
			++i;
		}
		else if()
	}
	
				

			
			
	t.writeln;
}
