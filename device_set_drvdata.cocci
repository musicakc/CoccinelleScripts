// <smpl>
@@
struct platform_device *pdev;
@@
- platform_set_drvdata(pdev, NULL);
@@
struct pci_dev *pci;
@@
- pci_set_drvdata(pci, NULL);
@@
struct spi_device *spi;
@@
- spi_set_drvdata(spi, NULL);
@@
struct device *dev;
@@
- dev_set_drvdata(dev, NULL);
@@
struct amba_device *dev;
@@
- amba_set_drvdata(dev, NULL);
// </smpl>
