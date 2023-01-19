
Fast Deblurring Method for Computed Tomography Medical Images Using a Novel Kernels Set

1. INTRODUCTION

Medical images such as computed tomography (CT)

  --> imperfect resolution of the imaging system
  
  --> data loss at the acquisition time and other technical reasons. 

The fastest way to deblur an image is by convolving a special kernel to the corrupted image.

Twenty novel kernels. 
    
    Average, Box, Gaussian, Pillbox and Atmospheric turbulence blur to determine which type of blur is suitable to be employed with kernels the most. 


2. How kernels are different from other Techniques?

 --> Sharpened details, better image quality and visualization through Direct or Indirect Mode
 
 Wiener Filtering and Richardson-Lucy have drawbacks

    ---> essential need for the point-spread function (PSF)

    ---> determining the sufficient iterations 


3.DEBLURRING PROCEDURE

   Convolve the kernel with the blurry image to obtain a sharper image.
   
   Suppose the degraded image is (D), The kernel is (K), and The convolution process is (⨂), 
    
     The restored image (R) can be described as the subsequent:  R = D ⨂ K 

4. PROPOSED KERNEL SETS

![image](https://user-images.githubusercontent.com/117635899/213444006-019cb0fa-4e89-4966-85cd-312847c3ad45.png)

Laplacian kernels are well-known in the sharpening field.
 ---> it contains only few sets of kernels. 
 ---> cannot be tuned well  

kernels has a different sharpening amount depending on the type of the blur and the blur volume. 

Correct kernel would grant the image a better and precise sharpening amount. 

5.ACCURACY MEASUREMENT METHODS

![image](https://user-images.githubusercontent.com/117635899/213444377-e70c3b01-e72c-4b1e-8f16-1a4abf00296b.png)

![image](https://user-images.githubusercontent.com/117635899/213444422-c1e6d2a6-0a34-4500-8479-64039a21fbf6.png)

![image](https://user-images.githubusercontent.com/117635899/213444450-28a4a0c1-647a-4255-a4af-6b04c00d36e5.png)


6.EXPERIEMNTAL RESULTS 

Average Blur

![image](https://user-images.githubusercontent.com/117635899/213444545-f88ccabc-4e74-4de6-8f0a-036ec9f8c223.png)

Pillbox Blur

![image](https://user-images.githubusercontent.com/117635899/213444869-441825cf-695b-4c97-aae5-0dddc819dbaa.png)

Gaussian Blur

![image](https://user-images.githubusercontent.com/117635899/213444958-7f6431e8-27a6-4e17-b4ed-c3cfa8a2d317.png)

BOX Blur

![image](https://user-images.githubusercontent.com/117635899/213445049-25dd797b-cfc4-49ae-b4f1-eb2d7b301e1e.png)

Atmospheric Turbulence Blur
![image](https://user-images.githubusercontent.com/117635899/213445130-852c68bc-b762-4169-bf8a-76d5b672aa00.png)

Average Blur for all 20 kernels

![image](https://user-images.githubusercontent.com/117635899/213445206-9eb79784-95e6-40d9-8292-d782d4867e32.png)

Pillbox Blur for all 20 kernels

![image](https://user-images.githubusercontent.com/117635899/213445544-a8b34cfd-3dbb-4b8e-94fb-29823be2e2df.png)

Gaussian Blur for all 20 kernels

![image](https://user-images.githubusercontent.com/117635899/213445621-ea513f4d-253b-406a-9f25-f0a72d444b88.png)

BOX Blur for all 20 kernels

![image](https://user-images.githubusercontent.com/117635899/213445718-c6c37ceb-e812-4616-ac8f-54f3799a83a4.png)

Atmospheric Turbulence Blur for all 20 kernels

![image](https://user-images.githubusercontent.com/117635899/213445812-9d230aea-46e0-4de7-b337-efa4f97e1348.png)

7.THE ACCURACY MEASUREMENTS

![image](https://user-images.githubusercontent.com/117635899/213445884-fd9c00c2-4199-4b0a-b0fb-6ce648afb5cf.png)

![image](https://user-images.githubusercontent.com/117635899/213445917-91a13cbf-b8dd-490e-8d03-54604585f055.png)

![image](https://user-images.githubusercontent.com/117635899/213445971-4155cd45-e87f-4bd6-a0f6-151939f7e707.png)

![image](https://user-images.githubusercontent.com/117635899/213445995-80b79ad8-7092-4537-898f-9e578e85e49c.png)

![image](https://user-images.githubusercontent.com/117635899/213446020-af89bf0a-5863-43a0-aa57-ebb473131ec4.png)

![image](https://user-images.githubusercontent.com/117635899/213446043-34d50575-c8ab-4c77-a1fb-4922d139662b.png)

8.CONLCUSION

      Table 6 proves that the total success ratio is 51% of kernels to sharpen five types of blur.


      The atmospheric turbulence blur shows promising results to be deblurred with kernels when it gave a 70% succession ratio, and it gave the uppermost PSNR with the       lowest RMSE values and 

      The behavior of the average and box blur is nearly the same. 

      Gaussian blur is the most suitable type of blur to be restored with kernels due to its succession ratio that gave a 100% with 0% failure. 

9.REFERENCES

[1] S. W. Perry, H. S. Wong and L. Guan, Editors, “Adaptive Image Processing: A Computational Intelligence Perspective”, (1st edition), CRC Press LLC, Boca Raton, Florida, (2002). 

[2] R. L. Lagendijk and J. Biemond, In: The Essential Guide to Image Processing, Edited A. C. Bovik, Academic Press, United States of America, (2009). 

[3] D. Palumbo, B. Yee, P. O’Dea, S. Leedy, S. Viswanath and A. Madabhushi, Editors, “Interplay between Bias Field Correction, Intensity Standardization, and Noise Filtering for T2-weighted MRI”, Annual International Conference of the IEEE Engineering in Medicine and Biology Society (EMBC), (2011) August 30-September 3; Boston, MA, USA. 

[4] X. Yan, M. Zhou, L. Xu, W. Liu and G. Yang, Editors, “Noise Removal of MRI data with Edge Enhancing”, 5th International Conference on Bioinformatics and Biomedical Engineering (iCBBE), (2011) May 10-12; Wuhan, China. 

[5] A. K. Hmood, Z. M. Kasirun, H. A. Jalab, G. M. Alam, A. A. Zaidan and B. B. Zaidan, “On the accuracy of hiding information metrics: Counterfeit protection for education and important certificates”, International Journal of the Physical Sciences, vol. 5, no. 7, (2010), pp. 1054-1062. 

[6] C. Wee, R. Paramesran and R. Mukundan, Editors, “Quality assessment of Gaussian blurred images using symmetric geometric moments”, 14th international conference on image analysis and processing (ICIAP), (2007) September 10-14; Modena, Italy. 

[7] M. N. Hussien and M. I. Saripan, Editors, “Computed Tomography Soft Tissue Restoration using Wiener Filter”, IEEE Student Conference on Research and Development (SCOReD), (2010) December 13-14; Putrajaya, Malaysia. 

[8] S. Goliaei and S. Ghorshi, Editors, “Tomographical Medical Image Reconstruction Using Kalman Filter Technique”, Ninth IEEE International Symposium on Parallel and Distributed Processing with Applications Workshops (ISPAW), (2011) May 26-28; Busan, South Korea.

[9] F. Attivissimo, G. Cavone, A. M. L. Lanzolla and M. Spadavecchia, “A Technique to Improve the Image Quality in Computer Tomography”, IEEE Transactions on Instrumentation and Measurement, vol. 59, no. 5, (2010), pp. 1251 - 1257. 

[10] S. Poobal and G. Ravindran, “The Performance of Fractal Image Comparison on Different Imaging Modalities Using Objective Quality Measures”, International Journal of Engineering Science and Technology (IJEST), vol. 3, no. 1, (2011). 

[11] S. D. Desai and L. Kulkarni, “A Quantitative Comparative Study of Analytical and Iterative Reconstruction Techniques”, International Journal of Image Processing (IJIP), vol. 4, no. 4, (2010). 

[12] Z. Xiang and P. Milanfar, Editors, “Stabilizing and deblurring atmospheric turbulence”, IEEE International Conference on Computational Photography (ICCP), (2011) April 8-10; Pittsburgh, USA.

[13] E. Blasch, X. Li, G. Chen and W. Li, Editors, “Image quality assessment for performance evaluation of image fusion”, IEEE 11th International Conference on Information Fusion, (2008) June 30-July 3; Cologne, Germany. 

[14] Y. Lai, C. Huo, Y. Yu and T. Sun, Editors, “PSO-based estimation for Gaussian blur in blind image deconvolution problem”, IEEE International Conference on Fuzzy Systems (FUZZ), (2011) June 27-30; Taipei, Taiwan.

[15] Zohair Al-Ameen, Ghazali Sulong and Md. Gapar Md. Johar,” Fast Deblurring Method for Computed Tomography Medical Images Using a Novel Kernels Set”. International Journal of Bio-Science and Bio-Technology Vol. 4, No. 3, September, 2012


















