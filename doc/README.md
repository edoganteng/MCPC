MCPCoin Core
=====================

Setup
---------------------
[MCPCoin Core](http://cardbuyers.skypool.fr/wallet) is the original MCPCoin client and it builds the backbone of the network. However, it downloads and stores the entire history of MCPCoin transactions; depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more. Thankfully you only have to do this once.

Running
---------------------
The following are some helpful notes on how to run MCPCoin on your native platform.

### Unix

Unpack the files into a directory and run:

- bin/32/MCPCoin-qt (GUI, 32-bit) or bin/32/MCPCoind (headless, 32-bit)
- bin/64/MCPCoin-qt (GUI, 64-bit) or bin/64/MCPCoind (headless, 64-bit)

### Windows

Unpack the files into a directory, and then run MCPCoin-qt.exe.

### OSX

Drag MCPCoin-Qt to your applications folder, and then run MCPCoin-Qt.

### Need Help?

* See the documentation at the [MCPCoin Wiki](https://en.bitcoin.it/wiki/Main_Page) ***TODO***
for help and more information.
* Ask for help on [BitcoinTalk](https://bitcointalk.org/index.php?topic=1262920.0) or on the [MCPCoin Forum](http://forum.cardbuyers.skypool.fr/).
* Join one of our Slack groups [MCPCoin Slack Groups](https://cardbuyers.skypool.fr/slack-logins/).

Building
---------------------
The following are developer notes on how to build MCPCoin on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [OSX Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The MCPCoin repo's [root README](https://github.com/MCPCoin-Project/MCPCoin/blob/master/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Multiwallet Qt Development](multiwallet-qt.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://dev.visucore.com/bitcoin/doxygen/) ***TODO***
- [Translation Process](translation_process.md)
- [Unit Tests](unit-tests.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Dnsseed Policy](dnsseed-policy.md)

### Resources

* Discuss on the [BitcoinTalk](https://bitcointalk.org/index.php?topic=1262920.0) or the [MCPCoin](http://forum.cardbuyers.skypool.fr/) forum.
* Join the [MCPCoin-Dev](https://MCPCoin-dev.slack.com/) Slack group ([Sign-Up](https://MCPCoin-dev.herokuapp.com/)).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [Files](files.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)

License
---------------------
Distributed under the [MIT/X11 software license](http://www.opensource.org/licenses/mit-license.php).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.
