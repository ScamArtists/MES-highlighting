#!/usr/bin/env sh

case "$1" in
    "i" | "install")
        # TODO
    ;;
    "u" | "uninstall")
        # TODO
    ;;
    *)
        echo "This is the MathEnslaver Highlighting build tool. It installs or removes the syntax highlighting from editors."
        echo "Usage: ./installer.sh [action] [editor]"
        echo "Actions:"
        echo "	i, install	    | Install the highlighting"
        echo "	u, uninstall	| Remove the highlighting"
        echo "Editors:"
        echo "  nano"
    ;;
esac
