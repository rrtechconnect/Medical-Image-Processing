
AAT(14LBI21):NEURAL NETWORKS &FUZZY LOGIC IN MEDICINE

Lung Cancer Classification Using Neural Networks for CT images 

![image](https://user-images.githubusercontent.com/117635899/213449405-060fbaaf-8bde-4fa9-bd51-9f0d96d64fea.png)

![image](https://user-images.githubusercontent.com/117635899/213449443-0d22761a-43f5-4089-bd8b-f0b5e070b0e6.png)

1. Description of the problem: LUNG CANCER

1.2 million/year people are diagnosed and about 1.1 million people are dying of this disease yearly (17.8% of the total cancer death)[1].

The survival rate is higher if the cancer is detected at early stages. 

CAD sys-tem is very helpful for radiologist in detection and diagnosing abnormalities earlier and faster [2]. 

In recent research literature, it is observed principles of neural networks have been widely used for the detection of lung cancer in medical images like CT.

![image](https://user-images.githubusercontent.com/117635899/213449616-7d63a17f-63ba-4ba1-8e60-e71d789f9ab1.png)

![image](https://user-images.githubusercontent.com/117635899/213449704-c27b773d-60f7-4d02-affc-1ed4a4e5b308.png)

![image](https://user-images.githubusercontent.com/117635899/213449815-f66aeb86-9a80-4300-8636-a25cde18fa02.png)

![image](https://user-images.githubusercontent.com/117635899/213449899-f8dbb944-614e-4330-954b-6e27dbd5dd56.png)

6. NEURAL NETWORK Implementation

Feed forward back propagation neural network 

    Types of training functions used for classification: 

    Levenberg–Marquardt (trainlm)

    Gradient descent back propagation (traingd)

    Gradient descent with variable learning rate(traingda)

    Gradient descent with momentum (traingdm)

    Gradient descent with variable learning rate and momentum (traingdx)

    Resilient back propagation (trainrp)

    One step secant algorithm (trainoss)


MATLAB DEMO


![image](https://user-images.githubusercontent.com/117635899/213450167-65983c78-2f35-4edc-b47f-c1f7d30354b5.png)

![image](https://user-images.githubusercontent.com/117635899/213450241-7d8cd6ff-a5f9-4395-9d13-d0151a04c7e5.png)

![image](https://user-images.githubusercontent.com/117635899/213450323-b7b8fe33-18ee-4ab6-a99b-601387056141.png)

![image](https://user-images.githubusercontent.com/117635899/213450382-78b704b8-78dc-419c-a950-3d78ad1a9130.png)


8. CONCLUSION

 KNN classifies the data accurately with 57% for three classes and with 100% with two classes.

(trainlm) ,traingdx gives best classification Accuracy followed by trainoss.

 Trainlm converges with less number of epochs.

 Applying two class data with large attributes will guarantee  better accuracy.

REFERENCES

[1] D.M. Parkin, Global cancer statistics in the year 2000, Lancet Oncology 2 (2001) 533–543.

[2] R.N. Strickland, “Tumor detection in non stationary backgrounds”, IEEE Transactions on Medical Imaging 13(June) (1994) 491–499.

[3] A.A. Abdulla, S.M. Shaharum, “Lung cancer cell classification method using artificial neural network”, Information Engineering Letters 2 (March) (2012) 50–58.

[4] N. Camarlinghi, et al., “Combination of computer-aided detection algorithms for automatic lung nodule identification”, International Journal of Computer Assisted Radiology and Surgery 7 (2012) 455–464.

[5] O.S. Al-Kadi, D. Watson, “Texture analysis of aggressive and non aggressive lung tumor CE CT images”, IEEE Transactions on Biomedical Engineering 55 (2008) 1822–1830.

[6] Ethan. Et.al, “Weak Segmentations and Ensemble Learning to Predict Semantic Ratings of Lung Nodules”, 2013 12th International Conference on Machine Learning and Applications.

[7] imagesJinsa Kuruvilla∗, K. Gunavathi,” Lung cancer classification using neural networksfor CT” Computer Methods and Programs in Biomedicine Volume 113, Issue 1, January 2014, Pages 202–209.





