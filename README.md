## Integration (auto patch) :
```
curl -LSs "https://raw.githubusercontent.com/xxblebleblexx/nomount-installer/refs/heads/dev-installer/nomount.sh" | bash -s (kernel version)
```
kernel version = 4.9 | 4.14 | 4.19 | 5.4 |5.10| 5.15 | 6.1 | 6.6 | 6.12 | 6.18
### Example :
```
curl -LSs "https://raw.githubusercontent.com/xxblebleblexx/nomount-installer/refs/heads/dev-installer/nomount.sh" | bash -s 4.19
```
### Tips :
make sure CONFIG_NOMOUNT=y has added on your defconfig
