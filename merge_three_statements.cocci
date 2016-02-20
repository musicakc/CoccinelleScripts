//<smpl>
@@
expression e;
@@
- if(e)
- return true;
- return false;
+ return e;
@@
expression e;
@@
- if(!e)
- return true;
- return false;
+ return !e;
@@
expression e;
@@
- if(e)
- return false;
- return true;
+ return !e;
@@
expression e;
@@
- if(!e)
- return false;
- return true;
+ return e;

//</smpl>
