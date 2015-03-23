lena = imread('images/Lena4.jpg');
lenaCloseFilter = morphology_close_filter(lena);
imwrite(lenaCloseFilter, 'results/Lena_Close_Filter.jpg');