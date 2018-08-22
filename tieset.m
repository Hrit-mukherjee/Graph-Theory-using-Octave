function [loop_current_matrix,branch_current_matrix]=tieset(B,Vs,Is,Z)
	m=size(B,1);
	n=size(B,2);
	loop_current_matrix=zeros(m,1);
	branch_current_matrix=zeros(n,1);
	Zm=B*Z*B';
	C=zeros(m,1);
	C=B*Vs - B*Z*Is;
	loop_current_matrix=pinv(Zm)*C;
	branch_current_matrix=B'*(loop_current_matrix);
	
