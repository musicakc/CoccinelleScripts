//<smpl>
/*
* Replace sg++ with sg = sg_next(sg)
*/
@@
struct scatterlist *sg;
@@
-sg++
+sg = sg_next(sg)
//</smpl>
