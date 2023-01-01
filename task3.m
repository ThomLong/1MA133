X=[-10 -10 10 10];
Y=[-10 10 10 -10];
Z1=(10-X-Y)/6;
fill3(X,Y,Z1,'b','facealpha',0.4);
xlabel('x');
ylabel('y');
zlabel('z');
hold on;

X=[-10 -10 10 10];
Y=[-10 10 10 -10];
Z2=(7-X-(4*Y))/3;
fill3(X,Y,Z2,'r','facealpha',0.4);
xlabel('x');
ylabel('y');
zlabel('z');
hold on;
t=[1/7 3];
plot3(11-7*t,-1+t,t,'--k',LineWidth=2);
hold on;

X=[-10 -10 10 10];
Y=[-10 10 10 -10];
Z3=(-10-(5*X)+Y)/3;
fill3(X,Y,Z3,'g','facealpha',0.4);
xlabel('x');
ylabel('y');
zlabel('z');
hold on;

A=[1 1 6;1 4 3;5 -1 3];
b=[10;7;-10];
c=[A b];
r= rref(c);

c1=A\b;
c2=[r(1,4);r(2,4);r(3,4)];
c3=inv(A)*b;

disp("Matlab \ command: ")
disp(c1);

disp("Reduced row echelon form: ")
disp(c2);

disp("Inverse matrix: ")
disp(c3);

plot3(c1(1,1),c1(2,1),c1(3,1),'k*',MarkerSize=10,LineWidth=2);