disp("#----# TASK 2 #----#");
load('cirkel300.mat'); % (i)
plot(X,Y,'linestyle','none','marker','+'); % (ii)
hold on;
axis equal;

% (iii)
A=zeros(300,3); % initiates a 300x3 matrix filled with zeros
b=zeros(300,1); % initiates a 300x1 matrix filled with zeros
for n=1:300
    A(n,1)=X(n,1);
    A(n,2)=Y(n,1);
    A(n,3)=1;
    b(n,1)=power(X(n,1),2)+power(Y(n,1),2);
end

% (iv)
c = A\b;
disp("c: ");
disp(c);

p=c(1,1)/2;
q=c(2,1)/2;
r = sqrt(c(3,1) + power(p,2) + power(q,2));
disp("p: " + p);
disp("q: " + q);
disp("r: " + r);

v = linspace(0,2*pi,100);

x = p + r * cos(v);
y = q + r * sin(v);

% Plot the circle
plot(x, y);