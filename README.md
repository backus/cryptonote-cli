cryptonote-cli
==============

Use [CryptoNote](https://cryptonote.org/) from the command line:

```bash
$ cryptonote 'I am using CryptoNote.org from the command line'
https://cryptonote.org/messages/387213a5-1f2a-4b78-b8db-f1987644f95f?gen_password=hhIttjzTGeDnQc6vcfsdbo4WXirSBbAt
```

Config
------

This depends on:

 * CasperJS
 * Coffee Script

Use [brew](http://brew.sh/) and [npm](https://npmjs.org/) to install:

```bash
$ brew update
$ brew install casperjs
```

```bash
$ sudo npm install -g coffee-script
```

Setup
-----

Clone wherever:

```bash
$ cd ~/Downloads
$ git clone git@github.com:backus/cryptonote-cli.git
```

Link the two files into your path:

```bash
$ cd ~/usr/local/bin
$ ln -s ~/Downloads/cryptonote-cli/cryptonote.coffee
$ ln -s ~/Downloads/cryptonote-cli/cryptonote
$ chmod 777 cryptonote
```

*Optional*: If you don't link into `/usr/local/bin` then change `cnpath` in `cryptonote` to the appropriate directory.

Usage
-----

Open the command line and type:

```bash
$ cryptonote 'YOUR SECRET MESSAGE'
```

and get your URL. Remember the single quotes.

Bonus
-----

I made this so I could create notes from [Alfred](http://www.alfredapp.com/). With cryptonote-cli I can now activate alfred via a hotkey and type my message like so:

![Alfred CryptoNote Usage](http://i.imgur.com/Tua0KSf.png)

and a few seconds later Alfred copies the CryptoNote URL to my clipboard and notifies me:

![CryptoNote Notification](http://i.imgur.com/qG5JfTC.png)

Setting Up CryptoNote + Alfred
------------------------------

I've included the Alfred Workflow in the repo.  To install it you can just go to the repo directory and open the file, Alfred should do the rest:

```bash
$ cd ~/Downloads/cryptonote-cli
$ open cryptonote.alfredworkflow
```

Alfred doesn't inherit system path settings, and my `casperjs` and `phantomjs` installations live in `/usr/local/bin`, which is why the short bash script in the Alfred workflow looks a bit strange.  If your executable or script paths are different then you will have to modify the workflow.

Notes on Stability
------------------

All this script does is pull up CryptoNote in CasperJS's headless browser, update the form, submit the page, and grab the final URL.  If [Alain](https://github.com/alainmeier/cryptonote) updates the CryptoNote HTML that this script touches then it will probably break.  Passwords and geo-fencing are not supported.
