function [] = ISNR(image, blurredImage,x)

e1=image-blurredImage;
e2=image-x;
E1=mean2(e1.*e1);
E2=mean2(e2.*e2);
result=10*log(E1/E2)/log(10);
% disp('The ISNR is=')
% disp(result);
 fprintf('\n The ISNR value is %0.4f',result)