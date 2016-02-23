//<smpl>
@@
expression a;
identifier b;
symbol dev,work,kobj,driver,hdac,base;
@@

(
- container_of(a, struct delayed_work, work)
+ to_delayed_work(a)
|
- container_of(a, struct platform_device, dev)
+ to_platform_device(a)
|
- container_of(a, struct spi_device, dev)
+ to_spi_device(a)
|
- container_of(a, struct pci_device, dev)
+ to_pci_dev(a)
|
- container_of(a, struct usb_device, dev)
+ to_usb_device(a)
|
- container_of(a, struct pci_bus, dev)
+ to_pci_bus(a)
|
- container_of(a, struct i2c_client, dev)
+ to_i2c_client(a)
|
- container_of(a, struct i2c_driver, driver)
+ to_i2c_driver(a)
|
- container_of(a, struct pci_driver, driver)
+ to_pci_driver(a)
|
- container_of(a, struct spi_driver, driver)
+ to_spi_driver(a)
|
- container_of(a, struct device, kobj)
+ kobj_to_dev(a)
|
- container_of(a, struct regulator_dev, dev)
+ dev_to_rdev(a)
|
- container_of(a, struct hid_device, dev)
+ to_hid_device(a)
|
- container_of(a, struct net_device, dev)
+ to_net_dev(a)
|
- container_of(a, struct fmc_device, dev)
+ to_fmc_device(a)
|
- hid_get_drvdata(container_of(a, struct hid_device, dev))
+ dev_to_wii(a)
|
- container_of(a, struct hdac_ext_device, hdac)
+ to_ehdac_device(a)
|
- container_of(a, struct hdac_device, dev)
+ dev_to_hdac_dev(a)
|
- container_of(a, struct albkcipher_request, base)
+ albkcipher_request_cast(a)
|
- container_of(a->b, struct irq_chip_type, chip)
+ irq_data_get_chip_type(a)
)
//</smpl>
