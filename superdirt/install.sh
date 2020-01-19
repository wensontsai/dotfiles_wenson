#### INSTALL SUPERDIRT
echo "$COLOR_PURPLE[9]$normal Installing the SuperDirt synths and samples (will take some time..)"
if test "${mydistro}" = "darwin"; then
    echo 'include("SuperDirt");"SuperDirt installation complete!".postln;0.exit;' | /Applications/SuperCollider.app/Contents/MacOS/sclang
else
    echo 'include("SuperDirt");"SuperDirt installation complete!".postln;0.exit;' | sclang
fi

echo "Tidal and SuperDirt should now be installed!\n\n"

echo "Please log out and in again to complete the set up.\n\n"

echo "You can then follow the instructions here to start everything up for the first time:"
echo "  https://tidalcycles.org/index.php/Start_tidalcycles_and_superdirt_for_the_first_time"
echo "Enjoy!"