// <smpl>
@@
expression e1;
identifier x;
@@
 x=
(
*dma_map_single(...)
|
*dma_map_page(...)
)
... when != dma_mapping_error(e1,x)
@@
expression e1;
identifier x;
@@

 x = 
(
*pci_map_single(...)
|
*pci_map_page(...)
)
 ... when != pci_dma_mapping_error(e1,x)
// </smpl>
