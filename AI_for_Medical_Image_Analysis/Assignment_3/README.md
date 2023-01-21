
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

![Training_Validation_Loss2](https://user-images.githubusercontent.com/117635899/213850010-7a5f2204-528d-437c-949f-cb046178a18a.png)
Figure 1: Training and Validation Loss

![Training_Validation_Accuracy2](https://user-images.githubusercontent.com/117635899/213850143-134f9383-1b51-4f2b-96e0-e051ebc630ce.png)
Figure 2: Training and Validation Accuracy

The sample predictions of the trained U-net model have been given in Figure3 and
Figure4.

![testing_prediction_2](https://user-images.githubusercontent.com/117635899/213850569-c2a75a74-9d99-4eba-9757-ec8e39dd2f5b.png)
Figure 3: Prediction on Test CT slice along with mask

![testing_prediction_1](https://user-images.githubusercontent.com/117635899/213850663-f48c055a-d5bd-401a-aea0-ed7c985f37e9.png)
Figure 4: Prediction on Test CT slice along with mask

