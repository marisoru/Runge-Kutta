function euler(f,a,b,ya,n)
h = (b-a)/n;
t = zeros(1,n+1);
w = zeros(1,n+1);
t(1) = a;
w(1) = ya;
for i =1:n
    w(i+1) = w(i) + h*feval(f,w(i));
    t(i+1) = a + h*i;
end
t
w
hold on
plot(t,w)
v = inline('(g*m)/c * (1 - exp((-c/m)*t))')
t = [0:0.1:12];
plot(t,v(12.5,9.8, 68.1, t))

