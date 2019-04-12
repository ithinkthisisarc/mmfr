MAC=false
LINUX=false

while test $# -gt 0; do
  case "$2" in
    -l)
      LINUX=true;;

    -m)
      MAC=true;;

  esac
done

echo "Updating package list..."
curl "monarrksmysteriousfilerepo.glitch.me/links/sources.info" > $MMFRSRC/sources.sh
if [[ $MAC="true" ]]; then
  echo "Downloading sources for MAC"
  curl "monarrksmysteriousfilerepo.glitch.me/links/mac.info" > $MMFRSRC/mac.sh
fi
if [[ $LINUX="true" ]]; then
  echo "Downloading sources for LINUX"
  curl "monarrksmysteriousfilerepo.glitch.me/links/linux.info" > $MMFRSRC/linux.sh
fi
echo "OK"
