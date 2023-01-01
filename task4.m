disp("#----# TASK4 #----#");

u=[3, 3, -1];
v=[2, 4, -1];

w = cross(u,v);
disp("cross product: ");
disp(w);

disp("The equation of the plane can be written in the form:")
disp("ax + by + cz + d = 0");

syms x y z d
eqn = (1)*x + (1)*y + (6)*z + d == 0;

disp("Since the normal vector to the plane is given as ~w = (1, 1, 6), the equation of the plane becomes:");
disp("x + y + 6z + d = 0");

disp("We can substitute the coordinates of the origin (0, 0, 0) to find d");
disp("0 + 0 + 6(0) + d = 0");
disp("d = 0");
disp("----------------");
disp("P1 = (6, 6, z1)")
disp("P2 = (6, -6, z2)");
disp("P3 = (-6, -6, z3)");
disp("P4 = (-6, 6, z4)");
disp("----------------");
% Unknowns

% For P1: 
z1 = myFunction(6.6, 0);
disp("z1 = " + z1);
% For P2: 
z2 = myFunction(6, -6);
disp("z2 = " + z2);
% For P3: 
z3 = myFunction(-6, -6);
disp("z3 = " + z3);
% For P4: 
z4 = myFunction(-6.6, 0);
disp("z4 = " + z4);



X = [6.6, 6, -6, -6.6];
Y = [0, -6, -6, 0];
Z = [z1, z2, z3, z4];


xlabel("X axis");
ylabel("Y axis");
zlabel("Z axis");
grid("on");
box("on");
set(gca, 'fontsize', 16);
axis equal
DrawVector3D(w, 'r');
DrawVector3D(u, 'g');
DrawVector3D(v, 'y');

view(w);
fill3(X,Y,Z, "b") 
disp(Z)
% Function that determines coordinates for z1, z2, z3, z4 
function z = myFunction(x, y)
    z = (-x - y)/(6);
end
















