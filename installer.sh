#!/usr/bin/env sh

# Configuration files
nano="~/.nanorc"

case "$1" in
    "i" | "install")
        case "$2" in
            "nano")
                echo "include \"$(pwd)/mes.nanorc\"" >> $nano
            ;;
            *)
                echo "Unknown editor!"
            ;;
        esac
    ;;
    "u" | "uninstall")
        case "$2" in
            "nano")
                line=`grep -n "include \"$(pwd)/mes.nanorc\"" $nano | cut -d: -f1 | cut -d$'\n' -f1`
                if [ -z "$line" ]
                then
                    echo "No installation found!"
                else
                    sed -i -e "${line}d" $nano
                fi
            ;;
            *)
                echo "Unknown editor!"
            ;;
        esac
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
