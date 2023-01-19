clc
clear all
image = imread('CT.jpg');
figure(); subplot (5,4,1);imshow(image); title('Original image');
H =fspecial('average',[5 5]);
% H = fspecial('average', [3 3]);
% H = fspecial('disk', 2);
blurredImage = imfilter(image,H,'replicate');

peaksnr0= PSNR(blurredImage, image);  
fprintf('\n The Peak-SNR value is %0.4f', peaksnr0);
subplot(5,4,2);
imshow(blurredImage); 
title(sprintf( 'Average blur noise:PSNR %0.4f',peaksnr0 ));

%% Kernels Definition
% w9 = [0 -1 0; 0 3 0; 0 -1 0;]; % K1
% w9 = [-1 0 -1; 0 5 0; -1 0 -1;]; % K2
% w9 = [-1 2 -1; 0 1 0; -1 2 -1;]; % K3
% w9 = [-1 0 -1; 2 1 2;  -1 0 -1;]; % K4
% w9 = [-1 0 -1; -1 7 -1; -1 0 -1;]; % K5
% w9 = [-1 -1 -1; 0 7 0; -1 -1 -1;]; % K6
% w9 = [-1 -1 -1; 1 5 1; -1 -1 -1;]; % K7
% w9 = [-1 1 -1; 0 3 0; -1 1 -1;]; % K8
% w9 = [0 -2 0; 0 5 0; 0 -2 0;]; % K9
% w9 = [-2 0 -2; 0 9 0; -2 0 -2;]; % K10
% w9 = [0 -1 0; -1 5 -1; 0 -1 0;]; % K11
% w9 = [-1 0 -1; -2 9 -2; -1 0 -1;]; % K12
% w9 = [-2 -1 -2; 0 11 0; -2 -1 -2;]; % K13
% w9 = [-1 -2 -1; 0 9 0; -1 -2 -1;]; % K14
% w9 = [-1 -2 -1; -1 11 -1; -1 -2 -1;]; % K15
% w9 = [0 -2 0; -1 7 -1; 0 -2 0;]; % K16
% w9 = [0 0 0; -1 3 -1; 0 0 0;]; % K17
% w9 = [-2 0 -2; -1 11 -1; -2 0 -2;]; % K18
% w9 = [0 -1 0; -2 7 -2; 0 -1 0;]; % K19
%   w9 = [-2 0 -2; 1 7 1; -2 0 -2;]; % K20

% %% Convolution Process
% g9 = imfilter(blurred, w9, 'symmetric', 'conv');
% 
% %% Display the results
% figure, imshow(g9); title('sharpened')
% % imwrite(g9,'out_Kernel.jpg')


%% Kernels Definition
K1 = [0 -1 0; 0 3 0; 0 -1 0;]; % K1

             g1 = imfilter(blurredImage, K1, 'symmetric', 'conv');
             peaksnr1= PSNR(g1, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr1);
             %Display the results
             subplot(5,4,3);imshow(g1); 
             title(sprintf( 'K1 Deblurred image with PSNR %0.4f',peaksnr1 ));
             ISNR(image,blurredImage,g1);
 K2 = [-1 0 -1; 0 5 0; -1 0 -1;]; % K2
 
             g2 = imfilter(blurredImage, K2, 'symmetric', 'conv');
             peaksnr2 = PSNR(g2, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr2);
%              subplot(5,4,4);imshow(g2); 
%              title(sprintf( 'K2 Deblurred image with PSNR %0.4f',peaksnr2 ));
             ISNR(image,blurredImage,g2)
 K3 = [-1 2 -1; 0 1 0; -1 2 -1;]; % K3
 
             g3 = imfilter(blurredImage, K3, 'symmetric', 'conv');
             peaksnr3 = PSNR(g3, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr3);
             subplot(5,4,5);imshow(g3); 
             title(sprintf( 'K3 Deblurred image with PSNR %0.4f',peaksnr3 ));
             ISNR(image,blurredImage,g3)
 K4 = [-1 0 -1; 2 1 2;  -1 0 -1;]; % K4
 
             g4 = imfilter(blurredImage, K4, 'symmetric', 'conv');
             peaksnr4 = PSNR(g4, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr4);
             subplot(5,4,6);imshow(g4); 
             title(sprintf( 'K4 Deblurred image with PSNR %0.4f',peaksnr4 ));
             ISNR(image,blurredImage,g4)
 K5 = [-1 0 -1; -1 7 -1; -1 0 -1;]; % K5
 
             g5 = imfilter(blurredImage, K5, 'symmetric', 'conv');
             peaksnr5 = PSNR(g5, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr5);
             subplot(5,4,7);imshow(g5); 
             title(sprintf( 'K5 Deblurred image with PSNR %0.4f',peaksnr5 ));
             ISNR(image,blurredImage,g5)
K6 = [-1 -1 -1; 0 7 0; -1 -1 -1;]; % K6

             g6 = imfilter(blurredImage, K6, 'symmetric', 'conv');
             peaksnr6 = PSNR(g6, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr6);
             subplot(5,4,8);imshow(g6); 
             title(sprintf( 'K6 Deblurred image with PSNR %0.4f',peaksnr6 ));
             ISNR(image,blurredImage,g6)
 K7 = [-1 -1 -1; 1 5 1; -1 -1 -1;]; % K7
 
             g7 = imfilter(blurredImage, K7, 'symmetric', 'conv');
             peaksnr7 = PSNR(g7, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr7);
             subplot(5,4,9);imshow(g7); 
             title(sprintf( 'K7 Deblurred image with PSNR %0.4f',peaksnr7 ));
             ISNR(image,blurredImage,g7)
K8 = [-1 1 -1; 0 3 0; -1 1 -1;]; % K8

             g8 = imfilter(blurredImage, K8, 'symmetric', 'conv');
             peaksnr8 = PSNR(g8, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr8);
%              subplot(5,4,10);imshow(g8); 
%              title(sprintf( 'K8 Deblurred image with PSNR %0.4f',peaksnr8 ));
             ISNR(image,blurredImage,g8)
K9 = [0 -2 0; 0 5 0; 0 -2 0;]; % K9

             g9 = imfilter(blurredImage, K9, 'symmetric', 'conv');
             peaksnr9 = PSNR(g9, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr9);
             subplot(5,4,11);imshow(g9); 
             title(sprintf( 'K9 Deblurred image with PSNR %0.4f',peaksnr9 ));
             ISNR(image,blurredImage,g9)
K10 = [-2 0 -2; 0 9 0; -2 0 -2;]; % K10

             g10 = imfilter(blurredImage, K10, 'symmetric', 'conv');
             peaksnr10 = PSNR(g10, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr10);
              subplot(5,4,12);imshow(g10); 
              title(sprintf( 'K10 Deblurred image with PSNR %0.4f',peaksnr10 ));
           ISNR(image,blurredImage,g10)
K11 = [0 -1 0; -1 5 -1; 0 -1 0;]; % K11

             g11 = imfilter(blurredImage, K11, 'symmetric', 'conv');
             peaksnr11 = PSNR(g11, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr11);
             subplot(5,4,13);imshow(g11); 
             title(sprintf( 'K11 Deblurred image with PSNR %0.4f',peaksnr11 ));
             ISNR(image,blurredImage,g11)
K12 = [-1 0 -1; -2 9 -2; -1 0 -1;]; % K12

             g12 = imfilter(blurredImage, K12, 'symmetric', 'conv');
             peaksnr12 = PSNR(g12, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr12);
             subplot(5,4,14);imshow(g12); 
             title(sprintf( 'K12 Deblurred image with PSNR %0.4f',peaksnr12 ));
             ISNR(image,blurredImage,g12)
K13 = [-2 -1 -2; 0 11 0; -2 -1 -2;]; % K13

             g13 = imfilter(blurredImage, K13, 'symmetric', 'conv');
             peaksnr13 = PSNR(g13, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr13);
             subplot(5,4,15);imshow(g13); 
             title(sprintf( 'K13 Deblurred image with PSNR %0.4f',peaksnr13));
             ISNR(image,blurredImage,g13)
K14 = [-1 -2 -1; 0 9 0; -1 -2 -1;]; % K14

             g14 = imfilter(blurredImage, K14, 'symmetric', 'conv');
             peaksnr14 = PSNR(g14, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr14);
             subplot(5,4,16);imshow(g14); 
             title(sprintf( 'K14 Deblurred image with PSNR %0.4f',peaksnr14 ));
            ISNR(image,blurredImage,g14)
K15 = [-1 -2 -1; -1 11 -1; -1 -2 -1;]; % K15

             g15 = imfilter(blurredImage, K15, 'symmetric', 'conv');
             peaksnr15 = PSNR(g15, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr15);
             subplot(5,4,17);imshow(g15); 
             title(sprintf( 'K15 Deblurred image with PSNR %0.4f',peaksnr15 ));
             ISNR(image,blurredImage,g15)
K16 = [0 -2 0; -1 7 -1; 0 -2 0;]; % K16

             g16 = imfilter(blurredImage, K16, 'symmetric', 'conv');
             peaksnr16 = PSNR(g16, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr16);
             subplot(5,4,18);imshow(g16); 
             title(sprintf( 'K16 Deblurred image with PSNR %0.4f',peaksnr16 ));
            ISNR(image,blurredImage,g16)
K17 = [0 0 0; -1 3 -1; 0 0 0;]; % K17

             g17 = imfilter(blurredImage, K17, 'symmetric', 'conv');
             peaksnr17 = PSNR(g17, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr17);
             subplot(5,4,19);imshow(g17); 
             title(sprintf( 'K17 Deblurred image with PSNR %0.4f',peaksnr17 ));
           ISNR(image,blurredImage,g17)
K18 = [-2 0 -2; -1 11 -1; -2 0 -2;]; % K18

             g18 = imfilter(blurredImage, K18, 'symmetric', 'conv');
             peaksnr18 = PSNR(g18, image);
              subplot(5,4,20);
              
              imshow(g18); 
          title(sprintf( 'K18 Deblurred image with PSNR %0.4f',peaksnr18 ));
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr18);
             ISNR(image,blurredImage,g18)
             
K19 = [0 -1 0; -2 7 -2; 0 -1 0;]; % K19

             g19 = imfilter(blurredImage, K19, 'symmetric', 'conv');
             peaksnr19 = PSNR(g19, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr19);
             subplot(5,4,4);imshow(g19); 
             title(sprintf( 'K19 Deblurred image with PSNR %0.4f',peaksnr19 ));

             ISNR(image,blurredImage,g19)
K20 = [-2 0 -2; 1 7 1; -2 0 -2;]; % K20

             g20 = imfilter(blurredImage, K20, 'symmetric', 'conv');
             peaksnr20 = PSNR(g20, image);  
             fprintf('\n The Peak-SNR value is %0.4f', peaksnr20);
              subplot(5,4,10);imshow(g20); 
             title(sprintf( 'K20 Deblurred image with PSNR %0.4f',peaksnr20));
             ISNR(image,blurredImage,g20)
   
             %% Calculation of ISNR
% [result]=ISNR(image,blurredImage,g9);
% e1=image-blurredImage;
% e2=image-g9;
% E1=mean2(e1.*e1);
% E2=mean2(e2.*e2);
% disp('the ISNR is')
% result=10*log(E1/E2)/log(10);
% disp(result);
[qi qi_map] = img_qi(image, g18);
% disp('the UIQI is');
% disp(qi);%Gives the over quality index.
fprintf('\n The UIQI value is %0.4f',qi);
figure();
subplot(2,3,1);
imshow(image);
title('original image');
subplot(2,3,2);
imshow (blurredImage);
title(sprintf( 'Average noise:PSNR %0.4f',peaksnr0 ));
 subplot(2,3,3);
 imshow(g2);
 title(sprintf( 'K2 Deblurred image with PSNR %0.4f',peaksnr2 ))
 subplot(2,3,4);
 imshow(g8);
title(sprintf( 'K8 Deblurred image with PSNR %0.4f',peaksnr8 ))
% subplot(2,3,5);
% % imshow((qi_map+1)/2);  %Shows the quality map as an image.
% % title('UIQI-Quality map as an image');