//<smpl>

@@
expression *e;
position p,q;
@@

e@q = \(kmalloc\|usb_alloc_urb\|kmalloc_array\|vmalloc\|kzalloc\|kcalloc\|dma_zalloc_coherent\|dma_alloc_coherent\|ioremap\|devm_ioremap\|kmem_cache_alloc\|request_mem_region\|pci_alloc_consistent\|usb_buffer_alloc\|dmam_alloc_coherent\|devm_kzalloc\|kstrdup\|create_workqueue\|create_freezable_workqueue\|create_singlethread_workqueue\|alloc_workqueue\|alloc_ordered_workqueue\|kmemdup\)(...);
if@p (e == NULL) {
...
return
- -1
+ -ENOMEM
;
}

@@
expression *e;
identifier l1;
position p,q;
@@

e@q = \(kmalloc\|usb_alloc_urb\|kmalloc_array\|vmalloc\|kzalloc\|kcalloc\|dma_zalloc_coherent\|dma_alloc_coherent\|dmam_alloc_coherent\|ioremap\|devm_ioremap\|kmem_cache_alloc\|request_mem_region\|pci_alloc_consistent\|usb_buffer_alloc\|dmam_alloc_coherent\|devm_kzalloc\|kstrdup\|create_workqueue\|create_freezable_workqueue\|create_singlethread_workqueue\|alloc_workqueue\|alloc_ordered_workqueue\|kmemdup\)(...);
if@p (e == NULL) {
...
goto l1;
}
l1:
...
return -1
+ -ENOMEM
;

@@
local idexpression ret;
expression *e,e1;
position p,q;
@@

- ret = -1
... when != ret = e1

e@q = \(kmalloc\|usb_alloc_urb\|kmalloc_array\|vmalloc\|kzalloc\|kcalloc\|dma_zalloc_coherent\|dma_alloc_coherent\|dmam_alloc_coherent\|ioremap\|devm_ioremap\|kmem_cache_alloc\|request_mem_region\|pci_alloc_consistent\|usb_buffer_alloc\|dmam_alloc_coherent\|devm_kzalloc\|kstrdup\|create_workqueue\|create_freezable_workqueue\|create_singlethread_workqueue\|alloc_workqueue\|alloc_ordered_workqueue\|kmemdup\)(...);
if@p (e == NULL) {
...
return
- ret
+ -ENOMEM
;
}

@@
local idexpression ret;
expression *e,e1;
identifier l1;
position p,q;
@@

- ret = -1
... when != ret = e1

e@q = \(kmalloc\|usb_alloc_urb\|kmalloc_array\|vmalloc\|kzalloc\|kcalloc\|dma_zalloc_coherent\|dma_alloc_coherent\|dmam_alloc_coherent\|ioremap\|devm_ioremap\|kmem_cache_alloc\|request_mem_region\|pci_alloc_consistent\|usb_buffer_alloc\|dmam_alloc_coherent\|devm_kzalloc\|kstrdup\|create_workqueue\|create_freezable_workqueue\|create_singlethread_workqueue\|alloc_workqueue\|alloc_ordered_workqueue\|kmemdup\)(...);
if@p (e == NULL) {
...
goto l1;
}
l1:
...
return
- ret
+ -ENOMEM
;
@@
expression *e;
position p,q;
@@

e@q = \(devm_free_pages\|devm_get_free_pages\|devm_kasprintf\|devm_kcalloc\|devm_kfree\|devm_kmalloc\|devm_kmalloc_array\|devm_kmemdup\|devm_kstrdup\|devm_kvasprintf\|devm_kzalloc\|alloc_etherdev\|alloc_netdev\)(...);
if@p (e == NULL) {
...
return
- -1
+ -ENOMEM
;
}

@@
expression *e;
identifier l1;
position p,q;
@@

e@q = \(devm_free_pages\|devm_get_free_pages\|devm_kasprintf\|devm_kcalloc\|devm_kfree\|devm_kmalloc\|devm_kmalloc_array\|devm_kmemdup\|devm_kstrdup\|devm_kvasprintf\|devm_kzalloc\|alloc_etherdev\|alloc_netdev\)(...);
if@p (e == NULL) {
...
goto l1;
}
l1:
...
return -1
+ -ENOMEM
;

@@
local idexpression ret;
expression *e,e1;
position p,q;
@@

- ret = -1
... when != ret = e1

e@q = \(devm_free_pages\|devm_get_free_pages\|devm_kasprintf\|devm_kcalloc\|devm_kfree\|devm_kmalloc\|devm_kmalloc_array\|devm_kmemdup\|devm_kstrdup\|devm_kvasprintf\|devm_kzalloc\|alloc_etherdev\|alloc_netdev\)(...);
if@p (e == NULL) {
...
return
- ret
+ -ENOMEM
;
}

@@
local idexpression ret;
expression *e,e1;
identifier l1;
position p,q;
@@

- ret = -1
... when != ret = e1

e@q = \(devm_free_pages\|devm_get_free_pages\|devm_kasprintf\|devm_kcalloc\|devm_kfree\|devm_kmalloc\|devm_kmalloc_array\|devm_kmemdup\|devm_kstrdup\|devm_kvasprintf\|devm_kzalloc\|alloc_etherdev\|alloc_netdev\)(...);
if@p (e == NULL) {
...
goto l1;
}
l1:
...
return
- ret
+ -ENOMEM
;

//</smpl>
