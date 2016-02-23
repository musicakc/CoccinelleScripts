//<smpl>
@@
type T;
T a,b,c;
@@

- a = b;
- b = c;
- c = a;
+ swap(b, c);
//<smpl>
