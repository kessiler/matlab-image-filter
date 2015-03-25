% Morphological erosion filter using structure elemental
%
% This algorithm is functional only for image 
% formation containing a matrix row x col without the RGB matrix.
%
% Source base: https://github.com/rfabbri/siptoolbox/blob/master/macros/erode.sci
function gr = morphology_erode_filter_with_se(image, se)
if(nargin == 1)
    se = [0 1 0; 1 1 1; 0 1 0];
    center1 = [2, 2];
else
    [rse,cse] = size(se);
    center1 = [ceil(rse/2),ceil(cse/2)];
end

% determine the SE coordinates.
[xse, yse] = find(se==1);
nse = size(xse, 1);
if nse > 0
    xse = xse - center1(1);
    yse = yse - center1(2);
end
% pad image
[rse,cse] = size(se);
[r,c]=size(image);
row=r+rse-1;
col=c+cse-1;
aux = zeros(row, col);
aux(center1(1):center1(1)+r-1, center1(2):center1(2)+c-1) = image;
image = aux;
clear aux;

gr=zeros(row,col);

for i=center1(1):center1(1)+r-1
    for j=center1(2):center1(2)+c-1
        if image(i,j) == 1
            aux = 1;
            for k=1:nse
                aux = image(i+xse(k), j+yse(k)) * aux;
            end
            gr(i,j) = aux;
        end
    end
end

gr = gr(center1(1):center1(1)+r-1 , center1(2):center1(2)+c-1);
end
