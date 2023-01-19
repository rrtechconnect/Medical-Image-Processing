function psnr_Value = PSNR(A,B)
% PSNR (Peak Signal to noise ratio)

if (size(A) ~= size(B))
   error('The size of the 2 matrix are unequal')

   psnr_Value = NaN;
   return; 
elseif (A == B)
   disp('Images are identical: PSNR has infinite value')

   psnr_Value = Inf;
   return;   
else

    maxValue = double(max(A(:)));

    % Calculate MSE, mean square error.
    mseImage = (double(A) - double(B)) .^ 2;
    [rows columns] = size(A);
    
    mse = sum(mseImage(:)) / (rows * columns);
    
    %SNR calculation
    mseImageA = (double(A).^2);
    snrA = sum(mseImageA(:));
    
    SNR = 10* log10(snrA/sum(mseImage(:)));

    % Calculate PSNR (Peak Signal to noise ratio)
    psnr_Value = 10 * log10( 256^2 / mse);
    RMSE = sqrt(mse);                                   % RMSE
    
    fprintf('\n The MSE is%0.4f',mse);
    fprintf('\n The SNR is %0.4f',SNR);
    fprintf('\n RMSE is %0.4f',RMSE);

end