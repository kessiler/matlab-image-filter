Digital Image Processing Algorithms in MATLAB
=========

This repository contains algorithms created in MATLAB as practical work of DIP.
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
 
The idea of mean filtering is simply to replace each pixel value in an image with the mean (`average') value of its neighbors, including itself. This has the effect of eliminating pixel values which are unrepresentative of their surroundings. Mean filtering is usually thought of as a  convolution filter. Like other convolutions it is based around a kernel, which represents the shape and size of the neighborhood to be sampled when calculating the mean.


Lowpass non-linear filters
-------------

Nonlinear filters, minimize/enhance noise and smooth/enhance edges, changing the mean of image.
The low-pass, follow the same concept as described above.


 **- Mode**
 
Like the mean filter, the mode filter considers each pixel in the image in turn and looks at its nearby neighbors to decide whether or not it is representative of its surroundings. Instead of simply replacing the pixel value with the mean of neighboring pixel values, it replaces it with the mode of those values. The mode is calculated counting how many of each number. A number that appears most often is the mode.

 **- Median**
 
Like the mean filter, the median filter considers each pixel in the image in turn and looks at its nearby neighbors to decide whether or not it is representative of its surroundings. Instead of simply replacing the pixel value with the mean of neighboring pixel values, it replaces it with the median of those values. The median is calculated by first sorting all the pixel values from the surrounding neighborhood into numerical order and then replacing the pixel being considered with the middle pixel value. (If the neighborhood under consideration contains an even number of pixels, the average of the two middle pixel values is used.)


Morphological filters
-------------

A morphological filter is performed by passing a structuring element over the image in a convolution-like operation. The output image is determined by the size and shape of the structuring element, as well as the operation chosen.

 **- Erosion**
 
The erosion operator takes two pieces of data as inputs. The first is the image which is to be eroded. The second is a (usually small) set of coordinate points known as a structuring element (also known as a kernel). It is this structuring element that determines the precise effect of the erosion on the input image.

 **- Dilation**
 
The dilation operator takes two pieces of data as inputs. The first is the image which is to be dilated. The second is a (usually small) set of coordinate points known as a structuring element (also known as a kernel). It is this structuring element that determines the precise effect of the dilation on the input image.

 **- Opening**
 
Opening define as an erosion followed by a dilation using the same structuring element for both operations. 

 **- Closing**
 
Closing is opening performed in reverse. It is defined simply as a dilation followed by an erosion using the same structuring element for both operations. 




## License

[MIT License](http://opensource.org/licenses/MIT)
