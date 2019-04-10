MAC=false
LINUX=false

for $i in $@; do
  if [[ $i = "-l" ]]; then
    LINUX=true
  elif [[ $i = "-m" ]]; then
    MAC=true
  fi
done

echo "Updating package list..."
curl "monarrksmysteriousfilerepo.glitch.me/links/sources.info" > sources.sh
if [[ $MAC = true ]]; then
  echo "Downloading sources for MAC"
  curl "monarrksmysteriousfilerepo.glitch.me/links/mac.info" > mac.sh
fi
if [[ $LINUX = true ]]; then
  echo "Downloading sources for LINUX"
  curl "monarrksmysteriousfilerepo.glitch.me/links/linux.info" > linux.sh
fi
echo "OK"
