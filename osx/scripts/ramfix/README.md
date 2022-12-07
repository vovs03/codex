# RAMfix - RAM cleaner processes

## OSX

Ежедневно не используются процессы забирающие ресурсы памяти в `OSX`  особенно такие как `Adobe`

- [x] 🍏 `launchctl list | grep adobe`

```shell
752     0       com.adobe.GC.AGM
919     0       com.adobe.accmac.36104
758     0       com.adobe.AdobeCreativeCloud
768     0       com.adobe.CCXProcess.36496
892     0       com.adobe.CCLibrary.34252
-       0       com.adobe.ccxprocess
```

### System monitoring

> All processes

- `com.adobe.acc.installer.v2`

### Asks

- [x] 🍏 `man launchctl`
- [what-is-the-difference-between-a-service-name-and-a-service-target](https://apple.stackexchange.com/questions/166397/what-is-the-difference-between-a-service-name-and-a-service-target)
  - `system/[service-name]`
  - `user/<uid>/[service-name]`
  - `gui/<uid>/[service-name]`
- [Where is service-target documented for launchctl?](https://developer.apple.com/forums/thread/16206)