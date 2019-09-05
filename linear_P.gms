positive variables x1, x2, x3, x4;
variable z;

*equations obj, c1, c2;
equations obj, c1;


obj..   z =e= x1 - 2*x2 - 4*x3 + 2*x4 ;

*c1..     -2*x1 + x2 + 8*x3 + x4 =l= 12   ;
c1..     -x1 + x2 + 6*x3 + x4 -16 =l= 0   ;

*c2..     x1 - 2*x3 =l= 4  ;


model prob4_hw3 /all/;

solve prob4_hw3 using lp minimizing z;