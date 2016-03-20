//<smpl>
/*
* Remove useless return statements in a void function
*/
@@
identifier f;
expression e;
@@
void f(...) { 
<...
- return
  e;
...> 
}
//</smpl>
