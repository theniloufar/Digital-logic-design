 `timescale 1ns/1ns
module oc15to4input(input a,b,c,d,e,f,g,h,i,j,k,l,m,n,o, output w3,w2,w1,w0);
	wire y0, y1, y2, x0, x1, x2, z1, z2;
	oc7to3input oc1(a,b,c,d,e,f,g, y2,y1,y0);
	oc7to3input oc2(h,i,j,k,l,m,n, x2,x1,x0);
	myTcircuit oc3(y0,x0,o, z1,w0);
	myTcircuit oc4(y1,x1,z1, z2,w1);
	myTcircuit oc5(y2,x2,z2, w3,w2);
endmodule
