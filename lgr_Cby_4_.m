function out=lgr_Cby_4_(N,X,rishe, u_)
% Overview
% This function returns a Shifted Lagrange Chebyshev(4th) matrix functions. 
%     
%out = lgr_Cby_4_(N,X,rishe, u_)
%
%inputs: 
%------------------------------------------------------ 
%|   N   : integer          : N+1 sentences are       |  
%|                            considered              |
%|   X   : [1xm] double     : Inputs of u_(x) in      | 
%|                            Lagrange functions      |
%|  pints: [1xN] double     : Inputs for making       |
%|                            Lagrange polynomilas    |
%|   u_  : symbolic function: Shifting parameter      |          
%------------------------------------------------------   
%
%Output:
%-------------------------------------------------------------------    
%| out   : [mxN] double : shifted Lagrange Chebyshev(4th) functions|       
%-------------------------------------------------------------------    
  out=lgr_Jacobi_(N,X,rishe, u_);
end