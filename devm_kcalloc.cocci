// <smpl>
@@
expression dev,E1,E2,E3;
@@
- devm_kzalloc(dev,E1*sizeof(E2),E3)
+ devm_kcalloc(dev,E1,sizeof(E2),E3)
@@
expression dev,E1,E3;
type T;
@@
- devm_kzalloc(dev,E1*sizeof(T),E3)
+ devm_kcalloc(dev,E1,sizeof(T),E3)
@@
expression dev,E1,E2,E3,E4;
@@
- devm_kzalloc(dev,E1*E2*sizeof(E3),E4)
+ devm_kcalloc(dev,E1*E2,sizeof(E3),E4)
@@
expression dev,E1,E2,E3;
type T;
@@
- devm_kzalloc(dev,E1*E2*sizeof(T),E3)
+ devm_kcalloc(dev,E1*E2,sizeof(T),E3)
@@
expression dev,E1,E2,E3,E4;
@@
- devm_kzalloc(sizeof(E3)*E1*E2,E4)
+ devm_kcalloc(E1*E2,sizeof(E3),E4)
@@
expression dev,E1,E2,E3;
type T;
@@
- devm_kzalloc(dev,sizeof(T)*E1*E2,E3)
+ devm_kcalloc(dev,E1*E2,sizeof(T),E3)
@@
constant E1;
expression dev,E2,E3;
@@
- devm_kzalloc(dev,E1*E2,E3)
+ devm_kcalloc(dev,E1,E2,E3)
// </smpl>
