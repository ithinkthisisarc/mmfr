# MMFR
Monarrk's Mysterious File Repo

# What is This?
A simple package manager mostly made for messing around during my math class that has grown way too much.

# Setup
Start by editing your `~/.profile` to include the line `export $MMFRSRC="~/path/to/mmfr`

Next, run add mmfr to your path by adding the line `export PATH=$PATH:$MMFRSRC:$MMFRSRC/bin`

After that, run `mmfr update` to sync your packages!
# Usage
To update the package list:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`mmfr update`

To find a file:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`mmfr find keyword`
If it returns a link, the package exists. If it returns nothing, it does not.

To download a file:
(note, must have synced packages on your machine with `mmfr update` first)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`mmfr get foo`

To remove a package:
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`mmfr remove bar`	
This will add the package to mmfr/bin.
