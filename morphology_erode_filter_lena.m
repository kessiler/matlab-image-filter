lena = imread('images/Lena4.jpg');
lenaErodeFilter = morphology_erode_filter(lena);
imwrite(lenaErodeFilter, 'results/Lena_Erode_Filter.jpg');