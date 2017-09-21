a = 0.05; 
b = 0.06;
xn=0.2; 
xk=0.95; 
dx=0.15;
X=[0.15,0.26,0.37,0.48,0.68]; 
X=sort(X);
x=xn:dx:xk;
function yres=yCalc(x,a,b)
  chisl = acos(x.^2-b.^2);
  znam = asin(x.^2-a.^2);
  yres = chisl./znam;
end
y1 = yCalc(x,a,b);
y2 = yCalc(X,a,b);

plot(x,y1,'r:o','LineWidth',3)
title('First lab part A')
xlabel('x')
ylabel('y1')
grid on;

hold on;

plot(X,y2,'b-*','LineWidth',3)
title('First lab part B')