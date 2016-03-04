// <smpl>
@@
expression e;
symbol PAGE_SIZE;
@@
(
- ALIGN(e, PAGE_SIZE)
+ PAGE_ALIGN(e)
|
- IS_ALIGNED(e, PAGE_SIZE)
+ PAGE_ALIGNED(e)
)
// </smpl>
