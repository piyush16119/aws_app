echo ""
echo ""
echo "**************************************************************"
echo "                      START                                   "
echo "--------------------------------------------------------------"
$flutter --version
$flutter clean
# $flutter clean
{
  $flutter pub get
  # $flutter pub get
  $flutter build web --web-renderer canvaskit --release -t lib/main.dart --pwa-strategy=none
} || {
  echo ""
  echo ""
  echo "---> Exception caught. Terminating build process. <---"
  exit 1
}
