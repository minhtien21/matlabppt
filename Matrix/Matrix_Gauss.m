function [x]=Matrix_Gauss(Matrix_A)
M=MatrixElechon(Matrix_A);
[Rows,Columns]=size(M);
x=zeros(1,Rows);
for i=Rows:-1:1
   sum=0;
   for j=1:Columns-1
       sum=sum+x(j)*M(i,j);
   end
   x(i)=(M(i,Columns)-sum)/M(i,i);
end