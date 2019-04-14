# MMFR
Monarrk's Mysterious File Repo

# What is This?
A simple package manager mostly made for messing around during my math class that has grown way too much.

# Setup
Run `./configure`.

Because this was designed for mac and doesn’t always work, you can also manually run the instructions. You do that as follows:

Add the following lines to your bash configuration file (i.e. .bashrc or .profile)

`export MMFRSRC=“/path/to/mmfr”`

`export PATH=$PATH:$MMFRSRC:$MMFRSRC/bin`

Then restart your terminal and run `mmfr update`

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
