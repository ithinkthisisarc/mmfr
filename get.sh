DEST=$1

function download() {
	curl "$1" > "$2"
	unzip "$2" > /dev/null
}

if [[ -z "$2" ]]; then
    echo "Input a package to get!"
    exit 1
fi

LINK=$( ./find.sh "$2" )

cd "bin"
# curl the link and unzip it
download "$LINK" "$DEST"
# get the name of the exported dir to add to path
NEW_DIR=$( unzip -qql $DEST | head -n1 | tr -s ' ' | cut -d' ' -f5- )
printf "\n\tAlmost done!\nTo add this to your PATH, run the following command:\n\texport PATH=\$PATH:$DIRECTORY/$NEW_DIR\n"
