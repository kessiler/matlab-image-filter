lena = imread('images/Lena4.jpg');
lenaDilateFilter = morphology_dilate_filter(lena);
imwrite(lenaDilateFilter, 'results/Lena_Dilate_Filter.jpg');