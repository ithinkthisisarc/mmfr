DEST=$1

function download() {
	curl "$1" > "$2"
	unzip "$2" > /dev/null
}

cd "bin"
if [[ -z "$2" ]]; then
    echo "Input a link to get!"
    exit 1
else
    # curl the link and unzip it
    download "$2" "$DEST"
    # get the name of the exported dir to add to path
    NEW_DIR=$( unzip -qql $DEST | head -n1 | tr -s ' ' | cut -d' ' -f5- )
    printf "\n\tAlmost done!\nTo add this to your PATH, run the following command:\n\texport PATH=\$PATH:$DIRECTORY/$NEW_DIR\n"
fi