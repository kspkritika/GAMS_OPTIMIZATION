*positive variables y2;
variable z;
Scalar y1  fixing y1 for node 2  /0/ ;
Scalar y2  fixing y2 for node 4  /1/ ;

*equations obj, c1, c2, c3, c4, c5, c6;
*equations obj, c1, c2, c3, c4;
equations obj, c1, c2;


obj..   z =e= y1 + 1.2*y2 ;

c1..     y1 + y2  =l= 1   ;

c2..     0.8*y1 + 1.1*y2 =l= 1  ;

*c3..     y1 =l= 1 ;

*c4..     -y1=l=0;

*c3..     y2 =l= 1 ;

*c4..     -y2=l=0;

model prob2_hw3 /all/;

solve prob2_hw3 using lp maximizing z;
