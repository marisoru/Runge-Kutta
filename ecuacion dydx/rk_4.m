function rk_4(f,t0,tf,x0,n)
h = (tf-t0)/n;
%t = t0:h:tf;
t = zeros(1,n+1);
x = zeros(1,n+1);
x(1) = x0;
for i=1:n
    %k1 = h*f(t(i),x(i));
    k1 = f(t(i));
    %k2 = h*f(t(i)+h/2,x(i)+k1/2);
    k2 = f(t(i)+h/2);
    %k3 = h*f(t(i)+h/2,x(i)+k2/2);
    k3 = f(t(i)+h/2);
    %k4 = h*f(t(i)+h,x(i)+k3);
    k4 = f(t(i)+h);
    
    x(i+1) = x(i) + h * ( k1 + 2*k2 + 2*k3 + k4 ) / 6;
    t(i+1) = t0 + h*i
end
t
x
hold on
plot(t,x)
hold on 
fr=inline('-1/2*x.^4 + 4*x.^3 - 10*x.^2 + 8.5*x + 1')
x   = [0:0.1:4]
 plot(x,fr(x))


