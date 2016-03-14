// <smpl>
@platform_driver@
identifier p,prb,rm;
@@
struct platform_driver p = {
.probe = prb,
.remove = rm,
};

@probe@
identifier platform_driver.prb, pdev;
expression *e;
@@
prb(struct platform_device *pdev, ...) {
  ...  
- e = of_iomap(...);
+ struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+ e = devm_ioremap_resource(&pdev->dev, res);
  if
- (e == NULL)
+ (IS_ERR(e))
{
  ...
- return ...;
+ return PTR_ERR(e);
}
  ...
- iounmap(...);
  ...
}
@probe1@
identifier platform_driver.prb, pdev,l;
expression *e;
@@
prb(struct platform_device *pdev, ...) {
  ...  
- e = of_iomap(...);
+ struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+ e = devm_ioremap_resource(&pdev->dev, res);
  if
- (e == NULL)
+ (IS_ERR(e))
{
  ...
- goto l;
+ return PTR_ERR(e);
}
  ...
?- iounmap(...);
  ...
}

@remove depends on (probe || probe1)@
identifier platform_driver.rm, pdev;
@@
rm(struct pci_dev *pdev, ...) {
  ...
?- iounmap(...);
  ...
}
// </smpl>
