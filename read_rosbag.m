clc; clear all; close all;
bag=rosbag('2018-06-19-17-24-53.bag' );
clustersSelect=select(bag, 'Topic', '/clusters');
clusterStruct = readMessages(clustersSelect,'DataFormat','struct');
 
%Really want to iterate on clusterStruct{i,1).ClusterList(j).RawCluster
%where i is length of clusterStruct
%where j is length of each ClusterList
xyzLabelCell=struct2cell(clusterStruct{1,1}.ClusterList(1).RawCluster);
%xyzMat=cell2mat(xyzLabelCell(1:3,:,:));
%xPoints=squeeze(xyzMat(1,:,:));
%yPoints=squeeze(xyzMat(2,:,:));
%zPoints=squeeze(xyzMat(3,:,:));
% 
% 
% xyzPoints=[xPoints yPoints zPoints];
% 
% %Thresholding on distances that need to be tweaked
% % xThreshHigh=xyzPoints(xyzPoints(:,1)<150,1);
% % yThreshHigh=xyzPoints(xyzPoints(:,1)<150,2);
% % zThreshHigh=xyzPoints(xyzPoints(:,1)<150,3);
% % xyzThreshHigh=[xThreshHigh yThreshHigh zThreshHigh];
% % 
% % xThreshLow=xyzThreshHigh(xyzThreshHigh(:,1)>0.5,1);
% % yThreshLow=xyzThreshHigh(xyzThreshHigh(:,1)>0.5,2);
% % zThreshLow=xyzThreshHigh(xyzThreshHigh(:,1)>0.5,3);
% % xyzThresh=[xThreshLow yThreshLow zThreshLow];
% 
% xyzThresh=xyzPoints;
% 
% pcshow(xyzThresh)
% grid on;

