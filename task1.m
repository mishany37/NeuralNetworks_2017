a = 2; 
b = 4.1;
xn=0.77; 
xk=1.77; 
dx=0.2;
X=[1.24,1.38,2.38,3.21,0.68]; 
X=sort(X);
x=xn:dx:xk;

function yres=yCalc(x,a,b)
  chisl = log(b^2 - x.^2)/log(a);
  znam = (abs(x.^2 - a^2)).^(1/3);
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


