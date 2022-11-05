# WSL2RasPi3QEMU

## Reference(Japanese Article)

* [WSL2(WSLg)上にRaspberry Pi OS(RaspbianBuster)をQEMUエミュレーターで動かす(Raspi3マシン)](https://qiita.com/yaju/items/bb91ea2bf84aac92243c)

## Precondition

* The OS is Windows 11.
* WSL2 uses Ubuntu (5.10.102.1-microsoft-standard-WSL2).
* RaspberryPi assumes RasPi3 Model B.

## Procedure

* Prepare WSL2 for Windows.
* Prepare WSLg.

```console
wsl --update
```

* Recommend for confirming xeyes in WSL2.

```console
xeyes
```

* Install newest QEMU Version(USB Controllor Supportrd Version)

```console
./qemusetup.sh
```

* Get RasPi3 Image and store kernel and dtb

```console
./GetRasPiImg.sh
```

* In case of running GUI, please run the following command.

```console
./GUI_QEMU_run.sh
```

* In case of running CUI, please run the following command.

```console
./CUI_QEMU_run.sh
```
