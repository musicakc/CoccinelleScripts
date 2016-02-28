@nm@
expression myname;
identifier i;
@@

struct platform_driver i = { .driver = { .name = myname } };

@@
expression dev,res,size,e1,e;
expression nm.myname;
@@

-if (!devm_request_mem_region(dev, res->start, size,
-                              \(res->name\|dev_name(dev)\|myname\))) {
-   ...
-   return ...;
-}
... when != res->start = e1
e =
-devm_ioremap(dev,res->start,size);
+devm_ioremap_resource(dev,res);

if 
-(e == NULL)
+(IS_ERR(e))
{
 ...
-return ...;
+return PTR_ERR(e);
}
