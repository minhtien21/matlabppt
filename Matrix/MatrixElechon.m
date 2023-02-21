function [Matrix]=MatrixElechon(Matrix)
[Rows,Columns]=size(Matrix);
for p=1:Rows-1
    for r=p+1:Rows
        ratio=Matrix(r,p)/Matrix(p,p);
        for c=1:Columns
            Matrix(r,c)=Matrix(r,c)-ratio*Matrix(p,c);
        end
    end
end