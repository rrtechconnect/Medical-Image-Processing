Solutions for CCE : AIMIA Homework 1 Solutions
October 1, 2022
1 Q1. Use the given expert annotations (infection masks) and categorize the CT scans into three categories: Normal, Mild, and Severe. Report the dataset distribution (or count) of above mentioned classes. Also, display a sample for each category's infection mask and infection rate. [Hint : For a given slice, Normal : infection rate is 0, Mild : infection rate is (0%, 40%] and Severe : infection rate is > 40%].
Solution:-
The classification of the CT infection masks in to Normal, Mild, and Severe categorieswas done by calulating the ratio of total number of pixels occupied by the infected tissue and the total number of pixles covered by the segmented lung region (i.e, covered by both the healthy tissue and infected tissue) as shown in figure 1.

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

![image](https://user-images.githubusercontent.com/117635899/213412835-75104e70-fd76-4847-87a7-d2942fb4ce99.png)
                            Figure 1: CT infection Rate calculation

