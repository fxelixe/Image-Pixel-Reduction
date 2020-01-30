clear;
clc;

B = [1 2 3,
    4 5 6,
    7 8 9]

[u,s,v] = svd(B)

u(:,1:2)*s(1:2,1:2)*v(:,1:2)'

X = double(rgb2gray(imread('foto.jpg')))
Z = imagesc(X), colormap gray
n = size(X,2), m = size(X,1)
[u,s,v] = svd(Z)
%imshow(Z)

plotpos = 4

for r = [5 20 100];
    Xapprox = u(:,1:r) * s(1:r,1:r) * v(:,1:r)';
    subplot(2,3, plotpos)
    plotpos = plotpos+1
    imagesc(Xapprox), axis off, colormap gray
end