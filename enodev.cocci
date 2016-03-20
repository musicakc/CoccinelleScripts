//<smpl>
@@
expression e,f;
position p,q;
@@
e@p = \(of_phy_connect\|of_ioremap\|of_phy_connect\|phy_parse_handle\|phy_find_first\|of-parse_handle\|of_get_property\|dev_get_platdata\)(...);
if@q (e == NULL) {
...
* return -1;
}
@@
expression *e;
identifier l1;
position p,q;
@@

* e@q = \(of_phy_connect\|of_ioremap\|of_phy_connect\|phy_parse_handle\|phy_find_first\|of-parse_handle\|of_get_property\|dev_get_platdata\)(...);
if@p (e == NULL) {
...
goto l1;
}
l1:
...
* return -1;

@@
local idexpression ret;
expression *e,e1;
position p,q;
@@

ret = -1
... when != ret = e1

* e@q = \(of_phy_connect\|of_ioremap\|of_phy_connect\|phy_parse_handle\|phy_find_first\|of-parse_handle\|of_get_property\|dev_get_platdata\)(...);
if@p (e == NULL) {
...
* return ret;
}

@@
local idexpression ret;
expression *e,e1;
identifier l1;
position p,q;
@@

ret = -1
... when != ret = e1

* e@q = \(of_phy_connect\|of_ioremap\|of_phy_connect\|phy_parse_handle\|phy_find_first\|of-parse_handle\|of_get_property\|dev_get_platdata\)(...);
if@p (e == NULL) {
...
goto l1;
}
l1:
...
* return ret;
//</smpl>
