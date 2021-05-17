%Map Creation

function getMap()
map = binaryOccupancyMap(10, 10, 10);

x = [10.0]; %Round Circle right
y = [5.0];

%x = [5.0; 5.0; 5.0; 5.0; 5.0]; %zigazg
%y = [9.0; 7.0; 5.0; 3.0; 1.0];

%x = [5.0]; %Island on middle
%y = [7.0];



setOccupancy(map, [x y], ones(1,1))

%inflate(map, 5) %Circle on right
inflate(map, 0.3) %zigzag
%inflate(map, 2) %island


figure
show(map)

ylim([0.00 11.00])

hold on
end
