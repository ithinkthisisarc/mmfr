NAME=$1
BIN="$MMFRSRC/bin"

echo -n "Use sudo? [Y/n]: "
read input
if [[ $input == "n" ]]; then
	rm -rf "$BIN/$NAME"
else
	sudo rm -rf "$BIN/$NAME"
fi 
