%%%%% 1MA133, Sofia Eriksson, 2021 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Funktion som ritar upp en vektor med startpunkt i origo.
% Syntax: DrawVector3D(vec,f)
% vec ska vara en 3x1- eller 1x3-matris och f ska vara en färgsträng
% Exampel: DrawVector3D([1 2 3],'m')
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function DrawVector3D(vec,f)
L=norm(vec); l=L/9; d=l*1/6;    % välj pilhuvudets spetsighet

% Rita vektorns streck fram till pilspetsens bas
plot3([0 vec(1)*(1-l/L)],[0 vec(2)*(1-l/L)],[0 vec(3)*(1-l/L)],f,...
    'LineWidth',2);
hold on
% % axis equal

% Rita vektorns spets
[~,ind]=sort(abs(vec));         % skapa p,q som är vinkelräta mot vec
p=zeros(size(vec));
p(ind(1:2))=1;
p(ind(3))=-sum(p(ind(1:2)).*vec(ind(1:2)))/vec(ind(3));
p=d*p/norm(p);
q=cross(vec,p); q=d*q/norm(q);
P0=(L-l)*vec/L;                 % basen på pilspetsen
n=25;
P1=P0+p;
% Rita upp pilhuvudet
for i=1:n
    r=p*cos(2*pi*i/n)+q*sin(2*pi*i/n);
    P2=P0+r;
    fill3([P1(1) P2(1) vec(1)],...
        [P1(2) P2(2) vec(2)],...
        [P1(3) P2(3) vec(3)],f,'EdgeColor',f);
    P1=P2;
end