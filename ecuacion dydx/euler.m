function euler(f,a,b,ya,n)
h = (b-a)/n;
t = zeros(1,n+1);
w = zeros(1,n+1);
t(1) = a;
w(1) = ya;
for i =1:n
    w(i+1) = w(i) + h*feval(f,t(i));
    t(i+1) = a + h*i;
end
t
w
hold on
plot(t,w)
fr=inline('-1/2*x.^4 + 4*x.^3 - 10*x.^2 + 8.5*x + 1')
x = [0:0.1:4]
plot(x,fr(x))


