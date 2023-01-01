disp("#----# TASK1 #----#");
A = [-4 3 1;0 2 1;1 12 1;5 6 1];
b = [25; 4; 144; 61];

c = A\b;
disp("c: ");
disp(c);

p = c(1,1)/2;
q = c(2,1)/2;
disp("p: " + p);
disp("q: " + q);

%Radius
r = sqrt(c(3,1) + power(p,2) + power(q,2));
disp("radius: " + r);

v = linspace(0,2*pi,100);

x = p + r * cos(v);
y = q + r * sin(v);

% Plot the circle
plot(x, y);

%Adding additional points
hold on;
plot(-4, 3, "--");
plot(0, 3, "--");
plot(1, 12, "--");
plot(5, 6, "--");
hold off;
%Make the figure interpretable
xlabel('x ');
ylabel('y ');



