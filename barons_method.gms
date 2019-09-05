option dnlp = baron;
option optcr = 0;

variable z, x1, x2, x3;

equations obj, c1, c2;

*obj..   z =e= abs(x1) + 2*abs(x2) + abs(x3) ;
obj..   z =e= abs(x1) + 2*abs(x2) - abs(x3) ;

c1..     x1 + x2 - x3 =l= 10   ;

c2..     x1 - 3*x2 + 2*x3 =e= 12  ;

model dnlp /all/;

solve dnlp using dnlp minimize z;
