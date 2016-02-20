// <smpl>
@@
unsigned long p;
@@
- p & ~PAGE_MASK
+ offset_in_page(p)
// </smpl>
