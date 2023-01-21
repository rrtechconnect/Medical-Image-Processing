
[embed] https://github.com/rrtechconnect/Medical-Image-Processing/blob/main/AI_for_Medical_Image_Analysis/Assignment_3/CCE-HW3-AIMIA-Dec-15-2022.pdf [/embed]

U-NET based COVID CT Semantic Segmentation of Healthy, infected and Background regions using 3554 CT slice images.

U-Net is an architecture for semantic segmentation. It consists of a emcoding path and a decoding path. The contracting path follows the typical architecture of a convolutional network.

The U-net Model has been implemented by resizing the input CT slices in to 128X128 dimension 

Total params: 1,940,851

Trainable params: 1,940,851

Non-trainable params: 0

Accuracy is = 99.49244856834412%

Mean IoU = 0.88859814

IoU for class1 is: 0.9985723

IoU for class2 is: 0.7025214

IoU for class3 is: 0.96470076

The Training, validation loss and accuracries have been depicted in Figure1 and Figure2.

![image](https://user-images.githubusercontent.com/117635899/213849365-2a486c47-e4e9-467d-8830-39528b8506d6.png)
Figure 1: Training and Validation Loss

![image](https://user-images.githubusercontent.com/117635899/213849373-3fe29ae6-74bc-4aeb-b691-1aa53a8cf8c0.png)
Figure 2: Training and Validation Accuracy

The sample predictions of the trained U-net model have been given in Figure3 and
Figure4.

![image](https://user-images.githubusercontent.com/117635899/213849402-541b3848-e668-4e8f-b2af-d73e950206ba.png)
Figure 3: Prediction on Test CT slice along with mask


![image](https://user-images.githubusercontent.com/117635899/213849420-d8252317-f4d2-4114-888d-f247d40ccaa9.png)
Figure 4: Prediction on Test CT slice along with mask

