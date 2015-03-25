matlab-image-filter
=========

This repository contains algorithms created in MATLAB as practical work of PDI.
The following filters have been implemented:

  > **Lowpass linear filters:**
  > - Mean with convolutions  1/4, 1/9 and 1/10.

  > **Lowpass non-linear filters:**
  > - Mode
  > - Median

  > **Morphological Filters:**
  > - Erosion with and without structural element
  > - Dilation with and without structural element
  > - Closing
  > - Opening

----------


Lowpass linear filters
-------------

Linear filters, soften and enhance image details and minimize noise effects without changing the average image.
Linear low-pass filters are filters that smooth the image attenuating high frequencies, which correspond to abrupt transitions. Tend to minimize noise and present the image blurring effect.

 **- Mean**
[TODO]


Lowpass non-linear filters
-------------

Nonlinear filters, minimize/enhance noise and smooth/enhance edges, changing the mean of image.
The low-pass, follow the same concept as described above.


 **- Mode**
[TODO]

 **- Median**
[TODO]


Morphological filters
-------------

A morphological filter is performed by passing a structuring element over the image in a convolution-like operation. The output image is determined by the size and shape of the structuring element, as well as the operation chosen.

 **- Erosion**
[TODO]

 **- Dilation**
[TODO]

 **- Closing**
[TODO]

 **- Opening**
[TODO]


## License

[MIT License](http://opensource.org/licenses/MIT)
