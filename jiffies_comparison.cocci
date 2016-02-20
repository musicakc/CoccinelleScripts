// <smpl>
@@
unsigned long j;
symbol jiffies;
@@
(
* jiffies <= j
| 
* jiffies < j
|
* jiffies > j
|
* jiffies >= j
|
* j <= jiffies
| 
* j < jiffies
|
* j > jiffies
|
* j >= jiffies
)

// </smpl>
