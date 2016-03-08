//<smpl>
@@
expression e;
identifier f,i;
position p;
@@
f(...,struct net_device *i,...) {
...
(
-  pr_debug@p (e)
+  netdev_dbg(i, e)
|
- pr_err@p (e)
+ netdev_err(i, e)
|
- pr_info@p (e)
+ netdev_info(i, e)
)
...
}
@@
expression e;
identifier f,i;
position p;
@@

f(...) {
...
struct net_device *n;
...
(
-  pr_debug@p (e)
+  netdev_dbg(n, e)
|
- pr_err@p (e)
+ netdev_err(n, e)
|
- pr_info@p (e)
+ netdev_info(n, e)
)
...
}
@a@
identifier s,x;
@@
struct s {
 ...
struct net_device *x;
 ...
};

@b depends on a@
expression e;
identifier f,i,a.s,a.x;
position p;
@@

f ( ..., struct s *i, ...) {
  ...
(
-  pr_debug@p (e)
+  netdev_dbg(i->x, e)
|
- pr_err@p (e)
+ netdev_err(i->x, e)
|
- pr_info@p (e)
+ netdev_info(i->x, e)
)
  ...
}

@c depends on a@
expression e;
identifier f,i,a.s,a.x;
position p;
@@

f (...) {
  ...
struct s *i = ...;
  ...
(
-  pr_debug@p (e)
+  netdev_dbg(i->x, e)
|
- pr_err@p (e)
+ netdev_err(i->x, e)
|
- pr_info@p (e)
+ netdev_info(i->x, e)
)
  ...
}
//</smpl>
