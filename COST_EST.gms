sets
    s scenarios  /1*100/
alias (s,sp)

parameter demand(s) demand;
          demand(s) = s.val  ;

variables
   x     cost ofeach newspaper
   z     objective
   y(s)  newspapers sold
   y(sp)                    ;
equations obj, c1(s), c2(s), c3(s) ,c4(sp), c5(sp), c6(sp);

obj.. z =e= -0.6*x + sum(s,0.01*1.5*y(s))
         -1*sum(s,0.01*sqr(sum(sp,0.01*1.5*y(sp))-1.5*y(s)));
c1(s)..  y(s) =l= x;
c2(s)..  y(s) =l= demand(s);
c3(s)..  y(s) =g= 0;

c4(sp).. y(sp) =l= demand(sp);
c5(sp).. y(sp) =l= x;
c6(sp).. y(sp) =g= 0;

x.lo = 0;

model HW7P2 /all/;
option optcr = 0
solve HW7P2 using NLP maximising z;
