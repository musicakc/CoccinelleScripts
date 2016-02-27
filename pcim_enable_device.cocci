// <smpl>
@pci_driver@
identifier p,prb,rm;
@@
struct pci_driver p = {
.probe = prb,
.remove = rm,
};

@probe@
identifier pci_driver.prb, pdev;
@@
prb(struct pci_dev *pdev, ...) {
  ...
  pcim_enable_device(...)
  <...
(
- pci_release_regions(...);
|
- pci_disable_device(...);
)
  ...>
}

@remove depends on probe@
identifier pci_driver.rm, pdev;
@@
rm(struct pci_dev *pdev, ...) {
  <...
(
- pci_release_regions(...);
|
- pci_disable_device(...);
)
  ...>
}
// </smpl>
