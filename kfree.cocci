//<smpl>
@@
type T;
expression *f;
@@

- kfree((T *)(f));
+ kfree(f);
//</smpl>
