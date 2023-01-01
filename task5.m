
load('lnu.mat');
% (ii & iii)
S=[1 0;0 -1];
reflexion=S*xy;
figure(1);
for n=1:37233
    x=xy(1,n);
    y=xy(2,n);
    plot(x,y,'linestyle','none','marker','.','Color','black');
    hold on;

    x2=reflexion(1,n);
    y2=reflexion(2,n);
    plot(x2,y2,'linestyle','none','marker','.','Color','yellow');
    hold on;
end
axis equal;

% Rotation 2pi/3
R=[cos((2*pi)/3) -sin((2*pi)/3);sin((2*pi)/3) cos((2*pi)/3)];
rotation=R*xy;

% (iv)
figure(2);
for n=1:37233
    x=xy(1,n);
    y=xy(2,n);
    plot(x,y,'linestyle','none','marker','.');
    hold on;

    x3=rotation(1,n);
    y3=rotation(2,n);
    plot(x3,y3,'linestyle','none','marker','.');
    hold on;
end
axis equal;

% (v)
five1=R*reflexion;
five2=S*rotation;

figure(3);
for n=1:37233
    x=xy(1,n);
    y=xy(2,n);
    plot(x,y,'linestyle','none','marker','.','Color','black');
    hold on;
    
    x2=five1(1,n);
    y2=five1(2,n);
    plot(x2,y2,'linestyle','none','marker','.','Color','magenta');
    hold on;

    x3=five2(1,n);
    y3=five2(2,n);
    plot(x3,y3,'linestyle','none','marker','.','Color','cyan');
    hold on;
end
axis equal;

% (vi)
X=[1 1;0 1];
shear=X*xy;
figure(4);
for n=1:37233
    x=xy(1,n);
    y=xy(2,n);
    plot(x,y,'linestyle','none','marker','.','Color','black');
    hold on;

    x2=shear(1,n);
    y2=shear(2,n);
    plot(x2,y2,'linestyle','none','marker','.','Color','yellow');
    hold on;
end
axis equal;