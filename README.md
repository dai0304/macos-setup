# macOS setup procedure

* see https://github.com/ikuwow/mac-provision
* see https://github.com/andrewdavidbell/macos-infra
* see http://blog.matsuokah.jp/entry/2016/01/01/191338 https://github.com/matsuokah/osx-provisioning

## Enable root user

https://support.apple.com/ja-jp/HT204012

## Run ansible playbook

```
$ sudo xcodebuild -license
$ xcode-select --install
$ git clone https://github.com/dai0304/macos-setup.git
$ cd macos-setup
$ ./setup
$ ansible-playbook -K site.yml
```

## Install via Apple App Store

* ESET https://eset-info.canon-its.jp/support/versionup/ecsp.html
* 1passowrd
* Numbers
* Pages
* Keynote
* Microsoft Remote Desktop 8.0
* IntelliJ IDEA
* LINE

## Login / setup application

* Alfred <- license
* Sublime text <- license
* IntelliJ IDEA <- license
* iTerm2 <- install shell integration
* Google Chrome <- (as default browser, login)
* Dropbox <- (login, sync)
* 1Password <- (configure)
* Chatwork <- (login)
* OmniFocus <- (license, login, sync)
* OmniGraffle <- license

## Manual setup

* Keyboard
    * disable Spotlight keyboard shortcut: Cmd+SP
    * disable IME keyboard shortcut: Ctrl+SP, Ctrl+Opt+SP
    * add Input Method: Google IME
