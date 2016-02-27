//<smpl>
@driver@
type T;
identifier p, probefn, removefn;
@@
T p = {
  .probe = probefn,
  .remove = removefn,
};

@prb@
identifier driver.probefn;
expression e;
@@
probefn(...) {
  ...
  e =
- dma_alloc_coherent
+ dmam_alloc_coherent
  (...)
  ...
- dma_free_coherent(...);
  ...
}

@rem depends on prb@
identifier driver.removefn;
@@
removefn(...) {
  ...
- dma_free_coherent(...);
  ...
}
//</smpl>
