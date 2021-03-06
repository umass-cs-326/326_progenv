# Course Programming Environment

![Vagrant up](./.imgs/vagrant_up.gif)

# VirtualBox and Vagrant

The best way to make sure your work will work in the same environment
as our examples and for us to be able to review is to run it in the
same environment. In particular, we will be running everything in a
Ubuntu/Linux environment. Fortunately you can easily run Linux on a
Mac or a Windows machine using a “virtual machine”. Specifically we
require that you use [VirtualBox](https://www.virtualbox.org/), which
runs on Mac, Linux, and Windows and is free. We also request that you
use [Vagrant](https://www.vagrantup.com) to setup the VM and
environment tools.

# Setup

Setting up your virtual machine (VM) environment is easy:

1. Download [VirtualBox](https://www.virtualbox.org/).
1. Download [Vagrant](https://www.vagrantup.com).
1. Download
   [this](https://github.com/umass-cs-326/326_progenv/archive/master.zip)
   repository and unzip. You should now have a folder called
   `326_progenv-master`. You are welcome to change the name of this
   folder to anything you would like. We will refer to this as the
   PROGENV folder.
1. Open a command prompt on your operating system of choice. On a Mac
   this is the `Terminal` program. On Windows this is the `Command`
   program. On Linux - well, if you are using Linux already then you
   probably know about how to open up the shell. After you do this,
   then you need to enter into the PROGENV directory. You do this
   using the `cd` command.
1. Lastly, you need to build the VM. To do this, you run the following
   command:
   
   `$ vagrant up`
   
   Make sure you are connected to the internet. This command will
   download the VM image and install lots of packages to setup your
   very own programming environment for this course!
   
   Note: if you see the following:
   
   ```bash
   default: Warning: Connection reset. Retrying...
   default: Warning: Remote connection disconnect. Retrying...
   default: Warning: Connection reset. Retrying...
   default: Warning: Remote connection disconnect. Retrying...
   default: Warning: Connection reset. Retrying...
   default: Warning: Remote connection disconnect. Retrying...
   default: Warning: Connection reset. Retrying...
   ```
   
   Be patient - it will eventually connect.
   
After you have completed setting up the VM environment, you can login
to the virtual machine with this simple command:

```bash
$ vagrant ssh
```

If everything worked correctly you will login to the Linux VM and you
should see the prompt. At this point you can open up any of the
suggested editors and start writing code.

It is also important to note that Vagrant will connect the PROGENV
folder on your host operating system's file system (e.g., Mac,
Windows, Linux) with the virtual machine operating system's file
system (Linux). That is, if you add a file into PROGENV on your host
OS you will see the file inside the VM. You can see this by navigating
to the `/vagrant` directory inside the VM:

```bash
$ cd /vagrant
```

If you run the `ls` command you will see the following:

```bash
$ ls -lR
.:
total 12
drwxr-xr-x 1 vagrant vagrant  352 Sep  4 14:05 docs
-rw-r--r-- 1 vagrant vagrant 5573 Sep  4 14:27 README.md
-rw-r--r-- 1 vagrant vagrant  414 Sep  4 14:05 Vagrantfile

./docs:
total 2924
-rw-r--r-- 1 vagrant vagrant  107375 Sep  4 14:05 bash-cheat.pdf
-rw-r--r-- 1 vagrant vagrant   53568 Sep  4 14:05 curl-cheat.pdf
-rw-r--r-- 1 vagrant vagrant  112637 Sep  4 14:05 emacs-cheat.pdf
-rw-r--r-- 1 vagrant vagrant  377767 Sep  4 14:05 git-cheat.pdf
-rw-r--r-- 1 vagrant vagrant  225752 Sep  4 14:05 html-cheat.pdf
-rw-r--r-- 1 vagrant vagrant   30036 Sep  4 14:05 http-status-cheat.pdf
-rw-r--r-- 1 vagrant vagrant 1785862 Sep  4 14:05 python-cheat.pdf
-rw-r--r-- 1 vagrant vagrant   44436 Sep  4 14:05 vagrant-cheat.pdf
-rw-r--r-- 1 vagrant vagrant  230787 Sep  4 14:05 vim-cheat.pdf
```

To test things out, run the following command from inside the
`/vagrant` directory:

```bash
$ echo "hello, world" > hello.txt
```

Now, from you host operating system navigate to the PROGENV folder and
look inside. You should see the `hello.txt` file. Voila, your VM
environment is now ready for this course!

# Cheatsheets

We have provided a number of "cheatsheets" in the `docs` folder that
you are welcome to use. They may be helpful when you begin learning
one of the editors below. 

# Programming Editors

We highly recommend that you learn one of the following editors for
this course:

* [emacs](https://www.gnu.org/software/emacs/)
* [vim](https://www.vim.org/)

Both of these editors can run inside your virtual machine terminal and
are exceptional tools of the trade. Although there is a steep learning
curve to learn these editors in a deep way, you can easily grasp the
basics of each editor to complete the work in this course. Learning
one of these editors will more than payoff in the future - trust us!
Optionally, you may also use the simple and very unsophisticated
[nano](https://www.nano-editor.org/) editor if you are stuck. However,
we can't emphasize enough the importance of learning emacs or vim.

After you install the virtual machine for this course you can easily
run each of these editors from the terminal:

```bash
$ emacs
$ vim
$ nano
```

Although we **really** want you to learn either `vim` or `emacs`, you
are able to use an alternative editor from your host OS by
opening/saving files in the PROGENV directory. If you are a CS student
you should not discount the importance of learning one of these
editors - it will surely save your life in the future.
