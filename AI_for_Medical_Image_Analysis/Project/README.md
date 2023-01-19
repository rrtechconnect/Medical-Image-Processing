
Title of Project: "Deep Learning based Retinal Vessel Segmentation in colour fundus photography images"

Category of the Project:  Category-3

Aim of the Project:
The main aim of this project is to develop and implement an automatic retinal vessel segmentation algorithm based on the state-of-the-art deep learning techniques. The retinal vessel segmentation and delineation of morphological attributes of retinal blood vessels  utilized for the diagnosis, screening, treatment, and evaluation of various  cardiovascular and ophthalmologic diseases such as hypertension, diabetic retinopathy etc., Automatic detection and analysis of the vasculature can assist in the implementation of screening programs  for eye related diseases. Further, it will assist to explore the relationship between retinal vessel tortuosity and cardiovascular or neural abnormalities. In addition to this, the retinal vascular tree is found to be unique for each individual and can be used for biometric identification.

![image](https://user-images.githubusercontent.com/117635899/213419552-528794d2-30a8-499a-93fa-1dc4867edb19.png)

Datasets:
1. DRIVE (Digital Retinal Images for Vessel Extraction): 40 images( 584*565 pixels).

2. STARE (Structured Analysis of the Retina): 20 images (700 * 605 pixels).

3. CHASE_DB1: 28 images (999 * 960 pixels).

Model:  U-Net  

Computing Resource (Training and Inference):  Google Colaboratory GPU(NVIDIA Tesla T4 16 GB ( 10098MiB / 15109MiB) 

Training : 
Data Augmentation: Horizontal Flip, Vertical Flip, Elastic Transform, Grid Distortion, Optical Distortion

Total parameters: 31,055,297   Trainable parameters: 31,043,521 Non-trainable parameters: 11,776 Number of Layers: 68

Training Time: 18-27 minutes Inference (testing) time: 18-23 milliseconds                         

Trained Model Size: 355 MB

![image](https://user-images.githubusercontent.com/117635899/213419931-c7c5b9c4-d671-4306-b0be-2fd3d2abcbd3.png)
Figures(Top to bottom): Training Vs. Validation(accuracy/loss) for datasets 1, 2 and 3 respectively

Inferences & Evaluation metrics

![image](https://user-images.githubusercontent.com/117635899/213420181-a67f71f0-cd5c-4413-8170-01d4d1fc0fe1.png)

![image](https://user-images.githubusercontent.com/117635899/213420579-369529a4-e7cf-414d-8473-ea8b5b73c3f7.png)
Inference by U-net Model Trained on 1. DRIVE, 2. STARE, 3. CHASE Datasets respectively

![image](https://user-images.githubusercontent.com/117635899/213420213-bc072e2d-f811-4f5a-98b9-d2a2b139ddc1.png)


![image](https://user-images.githubusercontent.com/117635899/213420531-e450448e-e380-453c-b12a-022e5f9c2b05.png)


![image](https://user-images.githubusercontent.com/117635899/213421582-5ba87a54-9e7c-4f30-aa91-a067c6966f9c.png)
Left Figures :Inference by U-net Model Trained on 1. DRIVE, 2. STARE, 3. CHASE Datasets respectively (No Domain Shift)
Right Figures : Inference by U-net Model Trained on DRIVE Reduced Accuracy due to Domain Shift


FUTURE WORK

Effect of Data Augmentation and need for more data 

Automatic Segmentation Vs.  Manual segmentation

Feasibility of deployment of trained Model

Converting codes to compile on NVIDIA Jetson Nano


REFERENCES

[1]. Ronneberger, O., Fischer, P., Brox, T. (2015). U-Net: Convolutional Networks for Biomedical Image Segmentation. In: Navab, N., Hornegger, J., Wells, W., Frangi, A. (eds) Medical Image Computing and Computer-Assisted Intervention – MICCAI 2015. MICCAI 2015. Lecture Notes in Computer Science(), vol 9351. Springer, Cham. https://doi.org/10.1007/978-3-319-24574-4_28

[2].  Fraz et al., "An Ensemble Classification-Based Approach Applied to Retinal Blood Vessel Segmentation", IEEE Transactions on Biomedical Engineering, vol. 59, no. 9, pp. 2538-2548, 2012.

[3]. Olaf Ronneberger, Philipp Fischer, Thomas Brox “U-Net: Convolutional Networks for Biomedical Image Segmentation”. arXiv,2015. Link:https://arxiv.org/abs/1505.04597

[4]. https://github.com/nikhilroxtomar/

[5]. https://github.com/bnsreenu/python_for_microscopists







