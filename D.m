

%--------------------------------------------------------------------------------



function out=D(n,a_,b_)
%note: must be changed to D_jacobi



E=zeros(n,n);
for i=1:1:n
 for j=1:1:n
  if i==j
    E(i,j)=2*(a_+b_+i)/((a_+b_+2*i-1)*(a_+b_+2*i));
   elseif i==j-1
    E(i,j)=2*(a_-b_)/((a_+b_+2*i)*(a_+b_+2*i+2));
   elseif i==j-2
    E(i,j)=-2*(i+a_+1)*(i+b_+1)/((a_+b_+i+1)*(a_+b_+2*i+2)*(a_+b_+2*i+3));
  endif
 end%for
end%for

%D

%[zeros(n+1,1),[inv(E);zeros(1,n)]]
out=[zeros(n+1,1),[inv(E);zeros(1,n)]];
out=2*out;
end%function


%------------------------------------------------------------
function out=A(n,a_,b_)

out=2*(n+a_+b_+1)/((2*n+a_+b_+2)*(2*n+a_+b_+1));


end 
%------------------------------------------------------------
function out=B(n,a_,b_)

out=-2*(b_-a_)/((2*n+a_+b_)*(2*n+a_+b_+2));

end 
%------------------------------------------------------------
function out=C(n,a_,b_)

out=(1/(a_+b_+n))*(2*(n+a_)*(n+b_)/((2*n+a_+b_)*(2*n+a_+b_+1)));

end 