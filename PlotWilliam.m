% This code is for Mr William 2021
clear
clc
close all
disp("William Heffernan's 2021 matlab script for particle detection: all rights are reserved :) ")

load('b_file.mat');
TrackID=b(:,1);
uniqueID=unique(TrackID);
%ploting the tracks themselves
figure
for i=1:length(uniqueID) 
index=find(TrackID == uniqueID(i));
x=b(index,2);
y=b(index,3);
plot(x,y);
hold on
end
hold off
%%
figure
file = dir('*.tif');
image=file.name;
Image = imread(image);
imshow(Image*30);
title('superimposed plot of tracks over cell image')
hold on
for i=1:length(uniqueID) 
index=find(TrackID == uniqueID(i));
x=b(index,2);
y=b(index,3);
plot(x,y);
hold on
end

%%
% making a figure with colors based on their length
figure
imshow(Image*30);
title('superimposed plot of tracks over cell image')
hold on
for i=1:length(uniqueID) 
index=find(TrackID == uniqueID(i));
x=b(index,2);
y=b(index,3);
plot(x,y);
hold on
end