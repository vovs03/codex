# :dart: Dart lang install (Linux)

> https://dart.dev/get-dart#install <br>
> `issue` #38 `vovs03/codex`


If you’re using Debian/Ubuntu on AMD64 (64-bit Intel), you can choose one of the following options, both of which can update the SDK automatically when new versions are released.

## :penguin: Install

[Install using apt-get](https://dart.dev/get-dart#install-using-apt-get)
[Install a Debian package](https://dart.dev/get-dart#install-a-debian-package)

### Install using apt-get

> Perform the following one-time setup:

- `sudo apt-get update`
- `sudo apt-get install apt-transport-https`

 - `wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg`
 - `echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | sudo tee /etc/apt/sources.list.d/dart_stable.list`

Then install the Dart SDK:

- `sudo apt-get update`
- `sudo apt-get install dart`

---

## :desktop_computer: Modify PATH for access to all Dart binaries

After installing the `SDK`, add its `bin` directory to your `PATH`. For example, use the following command to change `PATH` in your active terminal session:

- `export PATH="$PATH:/usr/lib/dart/bin"`

To change the `PATH` for future terminal sessions, use a command like this:

- `echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> ~/.profile`
