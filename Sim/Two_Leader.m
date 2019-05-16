%% 初始化参数
syms x v t;
t=0:0.1:15;
% Leader1参数
xc1x=-cos(t);
xc1y=sin(t);
xc1z=5+t*0;
vc1x=sin(t);
vc1y=cos(t);
vc1z=0;

% Leader2参数
xc2x=-2*cos(t);
xc2y=2*sin(t);
xc2z=5+t*0;
vc2x=2*sin(t);
vc2y=2*cos(t);
vc2z=0;

% follower1参数
x1 = [-1.5; 1; 3];
v1 = [0; 0; 1];
ex1 = [0.5; 0.5; 0];
exx1 = [-0.5; 0.5; 0];
% follower2参数
x2 = [1; 1; 0];
v2 = [0; 2; 0];
ex2 = [-0.5; 0; 0];
exx2 = [-1.5; 0; 0];
% follower3参数
x3 = [0.5; 1; 0];
v3 = [0; 0; 0];
ex3 = [0.5; -0.5; 0];
exx3 = [-0.5; -0.5; 0];
% follower4参数
x4 = [0.5; 0; 0];
v4 = [0; 0; 0];
ex4 = [1.5; 0; 0];
exx4 = [0.5; 0; 0];

% [v, x] = dsolve('Dx=v','Dv=1.5*cos(t)-((x-ex1(1)+cos(t))+2*(v-sin(t)))-((x-exx1(1)+2*cos(t))+2*(v-2*sin(t)))','v(0)=v1(1)','x(0)=x1(1)','t')
% [v, x] = dsolve('Dx=v','Dv=-1.5*sin(t)-((x-ex1(2)-sin(t))+2*(v-cos(t)))-((x-exx1(2)-2*sin(t))+2*(v-2*cos(t)))','v(0)=v1(2)','x(0)=x1(2)','t')

x1x=ex1(1)/2 + exx1(1)/2 - (3.*cos(t))/2 + (3.*exp(-2.*t).*exp(2^(1/2).*t))/4 + (3.*exp(-2.*t).*exp(-2^(1/2).*t))/4 + (3.*2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t))/4 - (3.*2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (ex1(1).*exp(-2.*t).*exp(2^(1/2).*t))/4 - (ex1(1).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (exp(-2.*t).*exp(2^(1/2).*t).*exx1(1))/4 - (exp(-2.*t).*exp(-2^(1/2).*t).*exx1(1))/4 + (exp(-2.*t).*exp(2^(1/2).*t).*x1(1))/2 + (exp(-2.*t).*exp(-2^(1/2).*t).*x1(1))/2 + (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*v1(1))/4 - (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*v1(1))/4 + (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*x1(1))/2 - (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*x1(1))/2 - (2^(1/2).*ex1(1).*exp(-2.*t).*exp(2^(1/2).*t))/4 + (2^(1/2).*ex1(1).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*exx1(1))/4 + (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*exx1(1))/4;
x1y=ex1(2)/2 + exx1(2)/2 + (3.*sin(t))/2 - (3.*2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t))/8 + (3.*2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t))/8 - (ex1(2).*exp(-2.*t).*exp(2^(1/2).*t))/4 - (ex1(2).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (exp(-2.*t).*exp(2^(1/2).*t).*exx1(2))/4 - (exp(-2.*t).*exp(-2^(1/2).*t).*exx1(2))/4 + (exp(-2.*t).*exp(2^(1/2).*t).*x1(2))/2 + (exp(-2.*t).*exp(-2^(1/2).*t).*x1(2))/2 + (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*v1(2))/4 - (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*v1(2))/4 + (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*x1(2))/2 - (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*x1(2))/2 - (2^(1/2).*ex1(2).*exp(-2.*t).*exp(2^(1/2).*t))/4 + (2^(1/2).*ex1(2).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*exx1(2))/4 + (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*exx1(2))/4;
x1z=- (exp(-t) + t.*exp(-t)).*(2.*vc1z + xc1z + ex1(3) - v1(3) - x1(3) - exp(t).*(2.*vc1z + xc1z + ex1(3))) - exp(-t).*(v1(3) + t.*exp(t).*(2.*vc1z + xc1z + ex1(3)));
% plot(xc1x,xc1y);hold on
% plot(xc2x,xc2y);hold on
% plot(x1x,x1y);hold on

x2x=ex2(1)/2 + exx2(1)/2 - (3.*cos(t))/2 + (3.*exp(-2.*t).*exp(2^(1/2).*t))/4 + (3.*exp(-2.*t).*exp(-2^(1/2).*t))/4 + (3.*2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t))/4 - (3.*2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (ex2(1).*exp(-2.*t).*exp(2^(1/2).*t))/4 - (ex2(1).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (exp(-2.*t).*exp(2^(1/2).*t).*exx2(1))/4 - (exp(-2.*t).*exp(-2^(1/2).*t).*exx2(1))/4 + (exp(-2.*t).*exp(2^(1/2).*t).*x2(1))/2 + (exp(-2.*t).*exp(-2^(1/2).*t).*x2(1))/2 + (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*v2(1))/4 - (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*v2(1))/4 + (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*x2(1))/2 - (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*x2(1))/2 - (2^(1/2).*ex2(1).*exp(-2.*t).*exp(2^(1/2).*t))/4 + (2^(1/2).*ex2(1).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*exx2(1))/4 + (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*exx2(1))/4;
x2y=ex2(2)/2 + exx2(2)/2 + (3.*sin(t))/2 - (3.*2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t))/8 + (3.*2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t))/8 - (ex2(2).*exp(-2.*t).*exp(2^(1/2).*t))/4 - (ex2(2).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (exp(-2.*t).*exp(2^(1/2).*t).*exx2(2))/4 - (exp(-2.*t).*exp(-2^(1/2).*t).*exx2(2))/4 + (exp(-2.*t).*exp(2^(1/2).*t).*x2(2))/2 + (exp(-2.*t).*exp(-2^(1/2).*t).*x2(2))/2 + (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*v2(2))/4 - (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*v2(2))/4 + (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*x2(2))/2 - (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*x2(2))/2 - (2^(1/2).*ex2(2).*exp(-2.*t).*exp(2^(1/2).*t))/4 + (2^(1/2).*ex2(2).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*exx2(2))/4 + (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*exx2(2))/4;
x2z=- (exp(-t) + t.*exp(-t)).*(2.*vc1z + xc1z + ex2(3) - v2(3) - x2(3) - exp(t).*(2.*vc1z + xc1z + ex2(3))) - exp(-t).*(v2(3) + t.*exp(t).*(2.*vc1z + xc1z + ex2(3)));

x3x=ex3(1)/2 + exx3(1)/2 - (3.*cos(t))/2 + (3.*exp(-2.*t).*exp(2^(1/2).*t))/4 + (3.*exp(-2.*t).*exp(-2^(1/2).*t))/4 + (3.*2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t))/4 - (3.*2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (ex3(1).*exp(-2.*t).*exp(2^(1/2).*t))/4 - (ex3(1).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (exp(-2.*t).*exp(2^(1/2).*t).*exx3(1))/4 - (exp(-2.*t).*exp(-2^(1/2).*t).*exx3(1))/4 + (exp(-2.*t).*exp(2^(1/2).*t).*x3(1))/2 + (exp(-2.*t).*exp(-2^(1/2).*t).*x3(1))/2 + (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*v3(1))/4 - (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*v3(1))/4 + (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*x3(1))/2 - (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*x3(1))/2 - (2^(1/2).*ex3(1).*exp(-2.*t).*exp(2^(1/2).*t))/4 + (2^(1/2).*ex3(1).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*exx3(1))/4 + (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*exx3(1))/4;
x3y=ex3(2)/2 + exx3(2)/2 + (3.*sin(t))/2 - (3.*2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t))/8 + (3.*2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t))/8 - (ex3(2).*exp(-2.*t).*exp(2^(1/2).*t))/4 - (ex3(2).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (exp(-2.*t).*exp(2^(1/2).*t).*exx3(2))/4 - (exp(-2.*t).*exp(-2^(1/2).*t).*exx3(2))/4 + (exp(-2.*t).*exp(2^(1/2).*t).*x3(2))/2 + (exp(-2.*t).*exp(-2^(1/2).*t).*x3(2))/2 + (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*v3(2))/4 - (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*v3(2))/4 + (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*x3(2))/2 - (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*x3(2))/2 - (2^(1/2).*ex3(2).*exp(-2.*t).*exp(2^(1/2).*t))/4 + (2^(1/2).*ex3(2).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*exx3(2))/4 + (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*exx3(2))/4;
x3z=- (exp(-t) + t.*exp(-t)).*(2.*vc1z + xc1z + ex3(3) - v3(3) - x3(3) - exp(t).*(2.*vc1z + xc1z + ex3(3))) - exp(-t).*(v3(3) + t.*exp(t).*(2.*vc1z + xc1z + ex3(3)));

x4x=ex4(1)/2 + exx4(1)/2 - (3.*cos(t))/2 + (3.*exp(-2.*t).*exp(2^(1/2).*t))/4 + (3.*exp(-2.*t).*exp(-2^(1/2).*t))/4 + (3.*2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t))/4 - (3.*2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (ex4(1).*exp(-2.*t).*exp(2^(1/2).*t))/4 - (ex4(1).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (exp(-2.*t).*exp(2^(1/2).*t).*exx4(1))/4 - (exp(-2.*t).*exp(-2^(1/2).*t).*exx4(1))/4 + (exp(-2.*t).*exp(2^(1/2).*t).*x4(1))/2 + (exp(-2.*t).*exp(-2^(1/2).*t).*x4(1))/2 + (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*v4(1))/4 - (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*v4(1))/4 + (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*x4(1))/2 - (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*x4(1))/2 - (2^(1/2).*ex4(1).*exp(-2.*t).*exp(2^(1/2).*t))/4 + (2^(1/2).*ex4(1).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*exx4(1))/4 + (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*exx4(1))/4;
x4y=ex4(2)/2 + exx4(2)/2 + (3.*sin(t))/2 - (3.*2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t))/8 + (3.*2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t))/8 - (ex4(2).*exp(-2.*t).*exp(2^(1/2).*t))/4 - (ex4(2).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (exp(-2.*t).*exp(2^(1/2).*t).*exx4(2))/4 - (exp(-2.*t).*exp(-2^(1/2).*t).*exx4(2))/4 + (exp(-2.*t).*exp(2^(1/2).*t).*x4(2))/2 + (exp(-2.*t).*exp(-2^(1/2).*t).*x4(2))/2 + (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*v4(2))/4 - (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*v4(2))/4 + (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*x4(2))/2 - (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*x4(2))/2 - (2^(1/2).*ex4(2).*exp(-2.*t).*exp(2^(1/2).*t))/4 + (2^(1/2).*ex4(2).*exp(-2.*t).*exp(-2^(1/2).*t))/4 - (2^(1/2).*exp(-2.*t).*exp(2^(1/2).*t).*exx4(2))/4 + (2^(1/2).*exp(-2.*t).*exp(-2^(1/2).*t).*exx4(2))/4;
x4z=- (exp(-t) + t.*exp(-t)).*(2.*vc1z + xc1z + ex4(3) - v4(3) - x4(3) - exp(t).*(2.*vc1z + xc1z + ex4(3))) - exp(-t).*(v4(3) + t.*exp(t).*(2.*vc1z + xc1z + ex4(3)));
% plot
figure(1)
plot3(xc1x, xc1y, xc1z);hold on
plot3(xc2x, xc2y, xc2z);hold on
plot3(x1x(1,:),x1y(1,:),x1z(1,:),'LineWidth',1.5);hold on
plot3(x2x(1,:),x2y(1,:),x2z(1,:),'LineWidth',1.5);hold on
plot3(x3x(1,:),x3y(1,:),x3z(1,:),'LineWidth',1.5);hold on
plot3(x4x(1,:),x4y(1,:),x4z(1,:),'LineWidth',1.5);hold on

scatter3(x1x(1,l),x1y(1,l),x1z(1,l),'filled');
scatter3(x2x(1,l),x2y(1,l),x2z(1,l),'filled');
scatter3(x3x(1,l),x3y(1,l),x3z(1,l),'filled');
scatter3(x4x(1,l),x4y(1,l),x4z(1,l),'filled');
scatter3(xc1x(1,l),xc1y(1,l),xc1z(1,l),'filled');
scatter3(xc2x(1,l),xc2y(1,l),xc2z(1,l),'filled');

axis([-3,3,-3,3,0,6]);
title('编队跟随')
legend('f1','f2','f3','f4');
xlabel("x");
ylabel("y");
zlabel("z");

grid on



figure(2)

subplot(311);
plot(t,x1x,'LineWidth',1.5);hold on
plot(t,x2x,'LineWidth',1.5);hold on
plot(t,x3x,'LineWidth',1.5);hold on
plot(t,x4x,'LineWidth',1.5);hold on
title('跟随机x方向的位置')
legend('f1','f2','f3','f4');
xlabel("t/s");
ylabel("x position/m");

subplot(312);
plot(t,x1y,'LineWidth',1.5);hold on
plot(t,x2y,'LineWidth',1.5);hold on
plot(t,x3y,'LineWidth',1.5);hold on
plot(t,x4y,'LineWidth',1.5);hold on
title('跟随机y方向的位置')
legend('f1','f2','f3','f4');
xlabel("t/s");
ylabel("y position/m");

subplot(313);
plot(t,x1z,'LineWidth',1.5);hold on
plot(t,x2z,'LineWidth',1.5);hold on
plot(t,x3z,'LineWidth',1.5);hold on
plot(t,x4z,'LineWidth',1.5);hold on
title('跟随机z方向的位置')
legend('f1','f2','f3','f4');
xlabel("t/s");
ylabel("z position/m");