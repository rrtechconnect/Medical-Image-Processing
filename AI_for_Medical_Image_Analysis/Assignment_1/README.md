[embed] https://github.com/rrtechconnect/Medical-Image-Processing/blob/main/AI_for_Medical_Image_Analysis/Assignment_1/CCE-HW1-AIMIA-Sep29-OCT-1-Latest.pdf [/embed]

Solutions for CCE : AIMIA Homework 1 Solutions, October 1, 2022

Q1. Use the given expert annotations (infection masks) and categorize the CT scans into three categories: Normal, Mild, and Severe. Report the dataset distribution (or count) of above mentioned classes. Also, display a sample for each category's infection mask and infection rate. [Hint : For a given slice, Normal : infection rate is 0, Mild : infection rate is (0%, 40%] and Severe : infection rate is > 40%].

Solution:-

The classification of the CT infection masks in to Normal, Mild, and Severe categorieswas done by calulating the ratio of total number of pixels occupied by the infected tissue and the total number of pixles covered by the segmented lung region (i.e, covered by both the healthy tissue and infected tissue) as shown in figure 1.

![image](https://user-images.githubusercontent.com/117635899/213412835-75104e70-fd76-4847-87a7-d2942fb4ce99.png)
                            Figure 1: CT infection Rate calculation

The total number of infection masks presented in the dataset are equal to 3554 

As per the technique discussed above(figure.1), the CT slices have been classified in to three categories i.e.,Severe, Mild, and Normal .

The distribution of classes are as follows:
Severe infection was found in 159 slices.

Mild infection was found in 1954 slices.

There were 1441 normal slices.

The infection rate of each class is as follows.

The total Severe infection rate is 5%

The total Mild infection rate is 55%

The total Normal slices rate is 41%

![image](https://user-images.githubusercontent.com/117635899/213414273-3cf04f7a-017a-4ab5-a95a-2dbb72d815da.png)
Figure 2: Distribution of infection rate in (%)

Q2. Apply the K-Means algorithm on the given CT Scans for segmenting the infected and healthy regions of the lung tissue. Compare the predicted mask from K-Means with expert annotation and report the averaged dice score, sensitivity,specificity, and accuracy for the normal and infected regions. Also, display two sample slices along with the expert infection mask and predicted mask.

Solution:-

The k-means is an unsupervised algorithm and it is used to segment the region of interest from the background. It groups the given data into K-clusters. Mostly the algorithm is used with unlabeled data. The K-means iteratively assigns the data points to one of the K clusters based on how near the point is to the cluster centroid.The sequence of steps in k-means algorithms are as follows. Assume that, we have input data points x1, x2, x3,....,xn
and the number of clusters needed denoted as K.

Step1 : Pick K points as the initial centroids, either randomly or the first K.

Step2 : Calculate the Euclidean distance of each point in the dataset with the identified cluster centroids

Step3: Assign each data point to the closest centroid based on the distance obtained from step 2.

Step4 : Find the new centroid by taking the average of the points in each cluster.

Step5: Repeat the steps 2, 3 and 4 till the centroids don't change or for a fixed number of iterations.

![image](https://user-images.githubusercontent.com/117635899/213414352-6c0136d5-aeca-4233-a150-f8277fecca9d.png)
Figure 3: The Infection rate is 74.50122230108036 percent, it is a severly infected CT slice!!!!

![image](https://user-images.githubusercontent.com/117635899/213414417-3dfbe7bd-8abe-487c-9522-2c464c7dabc8.png)
Figure 4: The Infection rate is 2.1793374997138475 percent, it is a mildly infected CT slice!!

![image](https://user-images.githubusercontent.com/117635899/213414466-960d958e-cf8f-4c72-8fd6-2de272ce8420.png)
Figure 5: The Infection rate is 0.0 percent, it is a normal CT slice



