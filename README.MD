# Overview
These Scripts are intedended to be used on Debian/Ubuntu running in Windows Subsystem for Linux.

## Setup
In Windows, create the folder `~/Documents/Ubuntu`.

In Windows, git clone this repo into `~/Documents/Ubuntu`, to create `~/Documents/Ubuntu/UbuntuScripts`. There is no need to chmod the Scripts.

In Ubuntu, navigate to `~/` and create a SymLink to the UbuntuScripts folder in the Windows FS. This is an example of a path on Ubuntu which points to the repo clone in Windows FS:
```/mnt/c/Users/kevin/Documents/Ubuntu/UbuntuScripts```
This is an exmple of the SymLink command from `~/`:
```sudo ln -s /mnt/c/Users/kevin/Documents/Ubuntu/UbuntuScripts UbuntuScripts```

In Ubuntu, edit the `~/.bashrc` file, source the `~/UbuntuScripts/functions.sh` script and add the `~/UbuntuScripts` folder to the path. Example:

```
# My Custom Functions
# type 'mf' for function list
[[ -r ~/UbuntuScripts/functions.sh ]] && . ~/UbuntuScripts/functions.sh
# My executable scripts to path
PATH="~/UbuntuScripts:${PATH}"
export PATH
```

Close and re-open the terminal and run 'mf', then 'mhello', then 'mtest'.

# Structure
When new functionality needs to be added, either write it as a function, or write it into a .sh file and reference that file from functions.sh. Using this methodology, there is no need to chmod the script files.
