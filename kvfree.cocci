//<smpl>
@@
expression a;
@@
- if(...) { vfree(a); }	
- else { kfree(a); }
+ kvfree(a);
@@
expression a;
@@
- if(...) { kfree(a); }	
- else { vfree(a); }
+ kvfree(a);
// </smpl>
