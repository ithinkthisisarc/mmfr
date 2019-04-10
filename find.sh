NAME=$1

if [[ -z "$NAME" ]]; then
    echo "Please input a file to find!"
    exit 1
fi

echo -n "Update packages? [y/N]: "
read input
if [[ "$input" = "y" ]]; then
	echo "Updating package list..."
	curl "monarrksmysteriousfilerepo.glitch.me/links/names.info" > packages.sh
	echo "OK"
fi

echo "Searching for file '$1'"
PKG=$( grep -F "$1" packages.sh )
echo "Here's what we found."
printf " ===> $PKG\n"


