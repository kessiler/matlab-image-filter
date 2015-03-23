lena = imread('images/Lena4.jpg');
lenaOpenFilter = morphology_open_filter(lena);
imwrite(lenaOpenFilter, 'results/Lena_Open_Filter.jpg');