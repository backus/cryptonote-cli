cryptonote-cli
==============

Use CryptoNote from the command line:

```shell
$ cryptonote 'I am using CryptoNote.org from the command line'
https://cryptonote.org/messages/387213a5-1f2a-4b78-b8db-f1987644f95f?gen_password=hhIttjzTGeDnQc6vcfsdbo4WXirSBbAt
```

Config
------

This depends on:

 * CasperJS
 * Coffee Script

Use [brew](http://brew.sh/) and [npm](https://npmjs.org/) to install:

```shell
$ brew update
$ brew install casperjs
```

```shell
$ sudo npm install -g coffee-script
```

Setup
-----

Clone wherever:

```shell
$ cd ~/Downloads
$ git clone git@github.com:backus/cryptonote-cli.git
```

Link the two files into your path:

```shell
$ cd ~/usr/local/bin
$ ln -s ~/Downloads/cryptonote-cli/cryptonote.coffee
$ ln -s ~/Downloads/cryptonote-cli/cryptonote
$ chmod 777 cryptonote
```

*Optional*: If you don't link into `/usr/local/bin` then change `cnpath` in `cryptonote` to the appropriate directory.

Usage
-----

Open the command line and type:

```shell
$ cryptonote 'YOUR SECRET MESSAGE'
```

and get your URL. Remember the single quotes.