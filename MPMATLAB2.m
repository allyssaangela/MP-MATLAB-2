%Machine Problem 2
%A program that accepts as input three points (?,?) lying on a circle in a 2dimensional Cartesian plane.

%inputs
x1 = input('Please input X-Coordinate of the FIRST Point: ');
y1 = input('Please input Y-Coordinate of the FIRST Point: ');

x2 = input('\nPlease input X-Coordinate of the SECOND Point: ');
y2 = input('Please input Y-Coordinate of the SECOND Point: ');

x3 = input('\nPlease input X-Coordinate of the THIRD Point: ');
y3 = input('Please input Y-Coordinate of the THIRD Point: ');

%equations
a = [x1,y1,1; x2,y2,1; x3,y3,1];
d = [((x1^2)+(y1^2)),y1,1; ((x2^2)+(y2^2)),y2,1; ((x3^2)+(y3^2)),y3,1];
e = [((x1^2)+(y1^2)),x1,1; ((x2^2)+(y2^2)),x2,1; ((x3^2)+(y3^2)),x3,1];
f = [((x1^2)+(y1^2)),x1,y1; ((x2^2)+(y2^2)),x2,y2; ((x3^2)+(y3^2)),x3,y3];

%determinants
A = det(a);
d1 = -det(d);
e1 = det(e);
f1 = -det(f);

h = round(((-d1)/(2*A)),2);%round () is a math command. 
k = round(((-e1)/(2*A)),2);

radius = round((sqrt(((d1^2)+(e1^2)-(4*A*f1))/(4*(A^2)))),2); 
D = round((d1/A),2);
E = round((e1/A),2);
F = round((f1/A),2);

center = [h,k]; 
vector = [D,E,F]; 

disp('     ');

disp('The Center is: '); 
disp(center);

disp('The Radius is: ');
disp(radius);

disp('The Vector is: ');
disp(vector);


