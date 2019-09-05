$ontext
HW 6 Q1
$offtext

positive variables QI,QII,QIII,A,BI,BP,BII,BIII,CII,CIII,C;
binary variables yI,yp,yII,yIII;
variable P;

set i "scenario" /s1*s5/;
parameter
demand(i) "tons"
      /  s1 5000000
         s2 8000000
         s3 10000000
         s4 12000000
         s5 15000000  /
price(i)  "$/ton"
      /  s1 2000
         s2 1900
         s3 1800
         s4 1600
         s5 1000  /
prob(i)    "Probability"
      /  s1 0.1
         s2 0.2
         s3 0.4
         s4 0.2
         s5 0.1  /;

equation OF, c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14;

OF.. P =e= -(yI*100000000+250*QI + yII*150000000+400*QII + yIII*200000000+550*QIII) + sum(i, (prob(i)*(-250*A(i)-450*BP(i)-100*BI(i)-150*CII(i)-200*CIII(i)+price(i)*C(i))));

c1(i).. 0.9*A(i)=e=BI(i);
c2(i).. BI(i)+BP(i)=e=BII(i)+BIII(i);
c3(i).. 0.82*BII(i) =e= CII(i);
c4(i).. 0.95*BIII(i) =e= CIII(i);
c5(i).. C(i)=e= CII(i)+CIII(i);

c6(i).. BI(i)=l=QI;
c7(i).. CII(i) =l= QII;
c8(i).. CIII(i) =l= QIII;

c9(i).. A(i)=l=16*yI*1000000;
c10(i).. C(i) =l= demand(i);
c11.. yII+yIII =e= 1;
c12.. QII =l= 10000000000*yII;
c13.. QIII =l= 10000000000*yIII;
c14.. QI =l= 10000000000*yI;

option optcr = 0;

option MIP = CPLEX;

model A6Q1 /all/;

solve A6Q1 using MIP maximizing p;
