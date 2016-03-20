@platform@
identifier p, probefn, removefn;
@@
struct platform_driver p = {
  .probe = probefn,
  .remove = removefn,
};

@prb@
identifier platform.probefn, pdev;
expression e;
@@
probefn(struct platform_device *pdev, ...) {
  ...
  e =
- spi_register_master
+ devm_spi_register_master
  (
+  &pdev->dev,
   ...);
   ...
?- spi_unregister_master(...);
  ...
}
@remove depends on prb@
identifier platform.removefn;
@@
removefn(...) {
...
?- spi_unregister_master(...);
...
}
