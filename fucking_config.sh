#Not making any checks whatsoever if files exists or anything
#c'mon I mean this would be useless anyways
echo Hey weird man that is standing in front of this screen, ya you.
echo This setup requires basic GNU tools. u ok w/ that?
read
echo Great 'cause I'm not asking you anyways!

echo So here we go, time to copy the soft shortcuts!
cp neovim.png  ~/.local/share/icons/neovim.png
cp neovim.desktop ~/.local/share/applications/neovim.desktop

echo Removing old config to prevent a messed up one...
rm -rf ~/.config/nvim/

echo Copying our config...
cp -r nvim/  ~/.config/

echo And done! Enjoy your stupid config with all my hate towards you
echo -GY

