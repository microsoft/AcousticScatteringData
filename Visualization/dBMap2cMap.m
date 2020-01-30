function [cMap] = dBMap2cMap(dbMap,lowBound,upBound,cMat)
%dBMap2cMap Summary of this function goes here
%   Detailed explanation goes here
dbMap(find(isnan(dbMap))) = lowBound;
dbMap(find(dbMap<lowBound)) = lowBound;
dbMap(find(dbMap>upBound)) = upBound;

a = (size(cMat,1)-1.0)/(upBound-lowBound);
b = (upBound-lowBound*size(cMat,1))/(upBound-lowBound);

dbIdxMap = round(a*dbMap+b);
%disp(dbIdxMap);
cMap = zeros(size(dbMap,1),size(dbMap,2),3);

for i = 1 : size(cMap,1)
    for j = 1 : size(cMap,2)
        for k = 1 : 3
            %fprintf('The current row in cMat: %d\n',dbIdxMap(i,j));
            %disp(dbIdxMap(i,j));
            cMap(i,j,k) = cMat(dbIdxMap(i,j),k);
        end
    end
end
    


end

