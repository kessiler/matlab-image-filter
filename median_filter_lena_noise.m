lenaNoise = imread('images/LenaNoise.jpg');
lenaSmooth = median_filter(lenaNoise);
imwrite(lenaSmooth, 'results/LenaSmooth_Median_Filter.jpg');