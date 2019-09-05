positive variables x1, x2, x3;
variable z;

equations obj, c1, c2, c3;


obj..   z =e= 3*x1 + x2 + 3*x3 ;

c1..     2*x1 + x2 + x3 =l= 2   ;

c2..     x1 + 2*x2 + 3*x3 =l= 5  ;

c3..     2*x1 + 2*x2 + x3 =l= 6  ;


model prob1_hw2 /all/;

solve prob1_hw2 using lp maximizing z;
