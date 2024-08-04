function bw = binarize(inputImage)
    im = imread(inputImage);
    imgray = rgb2gray(im);
    bw = imbinarize(imgray);

end

