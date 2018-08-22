function determinant=no._of_trees(A)
	A=A([1:end-1],:);	
	determinant=det(A*A');
	
