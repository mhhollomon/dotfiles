# Dotfiles

## Overview

This repo is a skeleton/template repo for tracking dotfiles.  It
contains a utility [bootstrap](https://github.com/mhhollomon/dotfiles/blob/master/nix/bootstrap.sh) to
help with managing and updating your dotfiles.

This is based on the system created by [jeffaco](https://github.com/jeffaco/dotfiles)

## This repo has several directories to support multiple platforms

Directory | Purpose
--------- | -------
nix | Linux/UNIX platforms (or compatible)
windows | Windows platform
mac | Mac platform

The Mac platorm currently shares the bootstrap script with the \*nix platforms.
Winows does not currently have a bootstrap.

## Using this repo

First, fork this repo into your github account.

Then, clone to you target host.

Then, add your dotfiles:

    $ git clone git@github.com:mhhollomon/dotfiles.git
    $ cd dotfiles
    $  # edit files
    $  # edit files
    $  # When satisfied with your files:
    $ nix/bootstrap.sh
    $ git push origin master

Finally, to install your dotfiles onto a new system:

    $ cd $HOME
    $ git clone git@github.com:mhhollomon/dotfiles.git
    $ dotfiles/nix/bootstrap.sh

## Compatibility

The bootstrap utility has been tested to work properly on Linux, IBM
AIX, HP-UX, Sun Solaris, and Mac OS/X.
