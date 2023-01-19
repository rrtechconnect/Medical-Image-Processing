% dp6BK.png is your original image, I downloaded directly
I = im2double(imread('dp6BK.png'));  
I=I(:,:,1);
imshow(I)


cropped = I(50:430,8:500); %% Crop region of interest   
thresholded = cropped < 0.35; %% Threshold to isolate lungs
clearThresh = imclearborder(thresholded); %% Remove border artifacts in image   
Liver = bwareaopen(clearThresh,100); %% Remove objects less than 100 pixels
Liver1 = imfill(Liver,'hole'); % fill in the vessels inside the lungs
figure,imshow(Liver1.*cropped)