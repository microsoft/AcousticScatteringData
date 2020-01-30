function [] = visualizeData(dataset,ind)
%visualizeData Summary of this function goes here
%   dataset: 'Train', 'Val', 'Test'
%   ind: an array of indices in the provided dataset

%% compute layout
imwidth = 1;
imheight = 1;
horzImDist = 0.1*imwidth;
vertImDist = 0.1*imheight;
leftDist = 0.1*imwidth;
rightDist = 0.1*imwidth;
cbwidth = 0.2*imwidth;
im2cbDist = 0.1*imwidth;
cbtxtwidth = 0.2*imwidth;
upDist = 0.1*imheight;
lowDist = 0.1*imheight;
totwidth = imwidth*5+4*horzImDist+leftDist+rightDist+im2cbDist+cbwidth+cbtxtwidth;
totheight = imheight*length(ind)+vertImDist*(length(ind)-1)+upDist+lowDist;

binMat = [0,0,0;1,1,1];

f = figure('Units','inches','InnerPosition',[1,1,totwidth,totheight]);
cMat = colormap(f);
pos = zeros(1,4);
pos(3) = imwidth;
pos(4) = imheight;
for i = 1 : length(ind)
    path = ['../',dataset];
    inputfile = [path,'/Input/','vox',num2str(ind(i)),'.mat'];
    outputfile = [path,'/Output/','field',num2str(ind(i)),'.mat'];
    load(inputfile);
    load(outputfile);
    for j = 1 : 5
        pos(1) = leftDist+(j-1)*imwidth+(j-1)*horzImDist;
        pos(2) = totheight-upDist-i*imheight-(i-1)*vertImDist;
        ax = axes(f,'Units','inches','Position',pos);
        %set(ax,'Visible','off');
        pause(0.02);
        if j == 1
            data = dBMap2cMap(voxData,0,1,binMat);
        else
            data = dBMap2cMap(fieldData(:,:,j-1),-25,10,cMat);
        end
        image(ax,data);
        set(ax,'Visible','off');
        daspect(ax,[1,1,1]);
        if j == 5
            ap = get(ax,'Position');
            cb = colorbar(ax);
            set(ax,'Position',ap);
            set(cb,'Units','inches');
            cp = get(cb,'Position'); % get the position of the colorbar
            %set(ax,'Units','normalized');
            %ap = get(ax,'Position'); % get the position of the current axis
            %set(f,'Units','normalized');
            fp = get(f,'Position'); % get the position of the current figure
            set(cb,'Units','inches');
            set(cb,'Position',[ap(1)+ap(3)+im2cbDist,cp(2),cbwidth,cp(4)]);
            caxis(ax,[-25,10]);
            %set(ax,'Position',ap);
            set(f,'Units','inches','InnerPosition',[1,1,totwidth,totheight]);
        end
    end
end
set(f,'Units','inches','InnerPosition',[1,1,totwidth,totheight]);
end

