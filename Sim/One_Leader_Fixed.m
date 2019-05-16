%% One Leader Control Fixed
% Author: Yao Chengtao
% 2018/11/5

%% 初始化参数
syms x v t;
t=0:0.1:15;
% Leader1参数
xc = [0; 0; 5];
vc = [0; 0; 0];
% follower1参数
x1 = [-1.5; 1; 3];
v1 = [0; 0; 1];
ex1 = [0; 0.5; 0];
% follower2参数
x2 = [1; 1; 0];
v2 = [0; 2; 0];
ex2 = [-0.5; 0; 0];
% follower3参数
x3 = [0.5; 1; 0];
v3 = [0; 0; 0];
ex3 = [0; -0.5; 0];
% follower4参数
x4 = [0.5; 0; 0];
v4 = [0; 0; 0];
ex4 = [0.5; 0; 0];

% [v, x] = dsolve('Dx=v','Dv=-((x-ex1(1)-xc(1))+2*(v-vc(1)))','v(0)=v1(1)','x(0)=x1(1)','t')               %follower1 x方向
% [v, x] = dsolve('Dx=v','Dv=-((x-ex1(2)-xc(2))+2*(v-vc(2)))','v(0)=v1(2)','x(0)=x1(2)','t')               %follower1 y方向
% [v, x] = dsolve('Dx=v','Dv=-((x-ex1(1)-xc1(1))+2*(v-vc1(1)))-((x-exx1(1)-xc2(1))+2*(v-vc2(1)))','v(0)=v1(1)','x(0)=x1(1)','t') 


%% 单架领航机的菱形编队

[tmp, l] = size(t);
x1x=- (exp(-t) + t.*exp(-t)).*(ex1(1) - v1(1) + 2.*vc(1) - x1(1) + xc(1) - exp(t).*(ex1(1) + 2.*vc(1) + xc(1))) - exp(-t).*(v1(1) + t.*exp(t).*(ex1(1) + 2.*vc(1) + xc(1)));
x1y=- (exp(-t) + t.*exp(-t)).*(ex1(2) - v1(2) + 2.*vc(2) - x1(2) + xc(2) - exp(t).*(ex1(2) + 2.*vc(2) + xc(2))) - exp(-t).*(v1(2) + t.*exp(t).*(ex1(2) + 2.*vc(2) + xc(2)));
x1z=- (exp(-t) + t.*exp(-t)).*(ex1(3) - v1(3) + 2.*vc(3) - x1(3) + xc(3) - exp(t).*(ex1(3) + 2.*vc(3) + xc(3))) - exp(-t).*(v1(3) + t.*exp(t).*(ex1(3) + 2.*vc(3) + xc(3)));

x2x=- (exp(-t) + t.*exp(-t)).*(ex2(1) - v2(1) + 2.*vc(1) - x2(1) + xc(1) - exp(t).*(ex2(1) + 2.*vc(1) + xc(1))) - exp(-t).*(v2(1) + t.*exp(t).*(ex2(1) + 2.*vc(1) + xc(1)));
x2y=- (exp(-t) + t.*exp(-t)).*(ex2(2) - v2(2) + 2.*vc(2) - x2(2) + xc(2) - exp(t).*(ex2(2) + 2.*vc(2) + xc(2))) - exp(-t).*(v2(2) + t.*exp(t).*(ex2(2) + 2.*vc(2) + xc(2)));
x2z=- (exp(-t) + t.*exp(-t)).*(ex2(3) - v2(3) + 2.*vc(3) - x2(3) + xc(3) - exp(t).*(ex2(3) + 2.*vc(3) + xc(3))) - exp(-t).*(v2(3) + t.*exp(t).*(ex2(3) + 2.*vc(3) + xc(3)));

x3x=- (exp(-t) + t.*exp(-t)).*(ex3(1) - v3(1) + 2.*vc(1) - x3(1) + xc(1) - exp(t).*(ex3(1) + 2.*vc(1) + xc(1))) - exp(-t).*(v3(1) + t.*exp(t).*(ex3(1) + 2.*vc(1) + xc(1)));
x3y=- (exp(-t) + t.*exp(-t)).*(ex3(2) - v3(2) + 2.*vc(2) - x3(2) + xc(2) - exp(t).*(ex3(2) + 2.*vc(2) + xc(2))) - exp(-t).*(v3(2) + t.*exp(t).*(ex3(2) + 2.*vc(2) + xc(2)));
x3z=- (exp(-t) + t.*exp(-t)).*(ex3(3) - v3(3) + 2.*vc(3) - x3(3) + xc(3) - exp(t).*(ex3(3) + 2.*vc(3) + xc(3))) - exp(-t).*(v3(3) + t.*exp(t).*(ex3(3) + 2.*vc(3) + xc(3)));

x4x=- (exp(-t) + t.*exp(-t)).*(ex4(1) - v4(1) + 2.*vc(1) - x4(1) + xc(1) - exp(t).*(ex4(1) + 2.*vc(1) + xc(1))) - exp(-t).*(v4(1) + t.*exp(t).*(ex4(1) + 2.*vc(1) + xc(1)));
x4y=- (exp(-t) + t.*exp(-t)).*(ex4(2) - v4(2) + 2.*vc(2) - x4(2) + xc(2) - exp(t).*(ex4(2) + 2.*vc(2) + xc(2))) - exp(-t).*(v4(2) + t.*exp(t).*(ex4(2) + 2.*vc(2) + xc(2)));
x4z=- (exp(-t) + t.*exp(-t)).*(ex4(3) - v4(3) + 2.*vc(3) - x4(3) + xc(3) - exp(t).*(ex4(3) + 2.*vc(3) + xc(3))) - exp(-t).*(v4(3) + t.*exp(t).*(ex4(3) + 2.*vc(3) + xc(3)));

figure(1);
plot3(x1x(1,:),x1y(1,:),x1z(1,:),'LineWidth',1.5);hold on
plot3(x2x(1,:),x2y(1,:),x2z(1,:),'LineWidth',1.5);hold on
plot3(x3x(1,:),x3y(1,:),x3z(1,:),'LineWidth',1.5);hold on
plot3(x4x(1,:),x4y(1,:),x4z(1,:),'LineWidth',1.5);hold on

scatter3(x1x(1,l),x1y(1,l),x1z(1,l),'filled');
scatter3(x2x(1,l),x2y(1,l),x2z(1,l),'filled');
scatter3(x3x(1,l),x3y(1,l),x3z(1,l),'filled');
scatter3(x4x(1,l),x4y(1,l),x4z(1,l),'filled');
scatter3(xc(1),xc(2),xc(3),'filled');
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