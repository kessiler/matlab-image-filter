function gr = median_filter(image)

	gr = image;

	Lint = 1;
	Pint = 1;

	% Lines
	for l = Lint+1 : size(image,1)-Lint
        % Pixels
        for p = Pint+1 : size(image,2)-Pint
            % Extract of sub-image (window)
            window = image(l-Lint : l+Lint, p-Pint : p+Pint);
            [n1,n2] = size(window);
            vector = zeros(n1*n2);
            i = 1; 
            for j = 1 : n1
                for k = 1 : n2
                    vector(i) = window(j,k);
                    i = i + 1;
                end
            end
            sorted = sort(vector);
            % convolution between sub-image and mask
            gr(l,p) = sorted(fix(length(sorted)/2) + 1);
        end
    end
end
