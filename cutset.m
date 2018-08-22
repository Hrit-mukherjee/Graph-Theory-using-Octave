function [twig_voltage_matrix,branch_voltage_matrix]=cutset(Q,Is,Vs,Y)
	m=size(Q,1);
	n=size(Q,2);
	twig_voltage_matrix=zeros(m,1);
	branch_voltage_matrix=zeros(n,1);
	Yt=Q*Y*Q';
	C=zeros(m,1);
	C=Q*Is - Q*Y*Vs;
	loop_current_matrix=pinv(Yt)*C;
	branch_voltage_matrix=Q'*(twig_voltage_matrix);
	
