# MathEnslaver Syntax Highlighting
This will be syntax highlighting for MES files, for several text editors.

At this point, only nano has highlighting.

## Installing
The install script is kind of limited at this point in time. However, with root permissions, you can use it
to install the highlighting for all users:
```sh
git clone https://github.com/ScamArtists/MES-highlighting.git
cd MES-highlighting
./installer.sh install [editor]
```
where `[editor]` is the editor you want to install the syntax highlighting for.

After installing, do not move or delete the directory with the installer. If you do want to move the folder,
uninstall, move the directory, and then install again.

For a list of all supported editors, run the installer without any arguments.

## Uninstalling
To uninstall the highlighting, run:
```sh
./installer uninstall [editor]
```
N.B. uninstalling will not work if you don't run the installer from the directory you installed the syntax
highlighting from.
