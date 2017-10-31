function returnvalue = derivative( a,b,n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    dx = (b-a)/(n-1);             % Define the step dx from the provided arguments
    d = zeros(n,n);               % nxn matrix of zeros
    d(2:end,1:end-1) = -eye(n-1); % Set lower off-diagonal to -1 using (n-1)x(n-1) identity matrix
    d(1:end-1,2:end) = d(1:end-1,2:end) + eye(n-1); % Set upper off-diagonal to +1 using (n-1)x(n-1) identity matrix
    d = d ./ 2;                   % Divide all elements of d by 2
    d(1,1) = -1;
    d(end,end-1) = -1;            % Set multiple matrix elements to -1. Note (row, column) convention.
    d(end,end) = 1;
    d(1,2) = 1;                   % Set multiple matrix elements to +1. Do not suppress output.
    returnvalue = d ./ dx;        % Divide all elements of d by dx

end

