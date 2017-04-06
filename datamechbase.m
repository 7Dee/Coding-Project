function [y] = datamechbase(n,x)
%
%  This program will provide the data at "n" points contained in the array
%  "x".  The program is purposefully a bit complicated as we do not want
%  you to know in advance the coefficients on the underlying equation.
%
%  Note that we will also add a bit of random noise to your data.  If you
%  run this twice with the same "n" and "x", your data will be therefore be
%  slightly different.
%
clear y
bgz = 0.06;
bfa = 10;
bza = 2.7;
a = bza + bgz/2 + bfa;
bgy = -2e-1;
bga = -0.89;
bfy = -0.54;
b = bgy + bga/2 + bfy;
bgx = 1;
bzz = 0;
bfx = 22.1;
bmz = 0.31;
bgw = -1.3;
bfw = 2.12e-06;
bdel = 122.7;
bgf = -5.6e-03;
bgv = 4.8e-01;
bgg = 7e-08;
rana = bgz;
bang = 0.134;
bfv = -6e-04;
bch = bzz * sin(bang) + bdel / bgf * sin(bzz/bang);
c = bgx / 3 + bfy * bfx;
f = c *4 / bza + bgy * bfx;
g = bfv;
if bch > 50
for i = 1:n
    y(i) = a + b * x(i) + c * x(i)^2 + f * x(i)^3 + g * x(i) ^4+randn * rana/10;
end
elseif bch > 20
for i = 1:n
    zz = bfa + bga * x(i)^2;
    z = bza + bfx * x(i) + bgv * x(i) ^2 + bgg * x(i) ^3 + bgg * x(i) ^4;
    yy = bgy * x(i) + bfx * x(i)^3;
    tt = bmz * x(i)^4 + zz;
    y(i) = z + yy + tt+randn * rana/10;
    y(i) = yy  + tt+randn * rana/10;
end
elseif bch >5
for i = 1:n
    zz = bgz + bgx * cos(x(i))^2;
    z = bga + bfy * cos(x(i)) + bmz * sin(x(i)) ^2 + bgf * cos(x(i)) ^3 + bfv * sin(x(i)) ^4;
    yy = bgy * sin(x(i)) + bgw * sin(x(i))^3;
    tt = bgv * cos(x(i))^4 + zz;
    y(i) = z + yy + tt+randn * rana/10;
    y(i) = yy  + tt+randn * rana/10;
end
else
for i = 1 : n
    zz = bgz + bgx * x(i)^2;
    z = bga + bfy * x(i) + bmz * x(i) ^2 + bgf * x(i) ^3 + bfv * x(i) ^4;
    yy = bgy * x(i) + bgw * x(i)^3;
    tt = bgv * x(i)^4 + zz;
    y(i) = z + yy + tt+randn * rana/10;
    y(i) = yy  + tt+randn *rana/10 ;
end
end