function rk_4(f,t0,tf,x0,n)
h = (tf-t0)/n;
%t = t0:h:tf;
t = zeros(1,n+1);
x = zeros(1,n+1);
x(1) = x0;
for i=1:n
    %k1 = h*f(t(i),x(i));
    k1 = f(x(i));
    %k2 = h*f(t(i)+h/2,x(i)+k1/2);
    k2 = f(x(i)+k1/2);
    %k3 = h*f(t(i)+h/2,x(i)+k2/2);
    k3 = f(x(i)+k2/2);
    %k4 = h*f(t(i)+h,x(i)+k3);
    k4 = f(x(i)+k3);
    
    x(i+1) = x(i) + h * ( k1 + 2*k2 + 2*k3 + k4 ) / 6;
    t(i+1) = t0 + h*i;
end
t
x
hold on
plot(t,x)
hold on 
v = inline('(g*m)/c * (1 - exp((-c/m)*t))')
t = [0:0.1:12]
plot(t,v(12.5,9.8, 68.1, t))


