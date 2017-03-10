# fcitx-table-flypy
小鹤双拼是一款流行的双拼输入方案。
此仓库的目的是生成用于 fcitx 的小鹤双拼的码表，该码表以音码+形码的方式，四码一字，试图获得和 Windows 上的小鹤双拼飞扬版一致的输入体验。

## 安装 ##
    cp flypy.conf flypy.mb ~/.config/fcitx/table/

Arch linux 用户:

    sudo makepkg -sfi

或者直接从 AUR 中获取 fcitx-table-flypy
    
## 定制 ##
1. 自定义码表: 修改 flypy.txt

2. 自定义 fcitx 配置: 修改 flypy.conf 和 flypy.head

3. 执行 make 重新生成 flypy.mb
