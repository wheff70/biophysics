load('b_master_250nmLatA.mat');

TrackID=b_master_250nmLatA(:,1);
uniqueID=unique(TrackID);
x = randn(82093);
 for i=1:length(b_master_250nmLatA)
 index = uniqueID(i);
 y = b_master_250nmLatA(index,8);
 swarmchart(x,y)
 
 end