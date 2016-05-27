#Not making any checks whatsoever if files exists or anything
#c'mon I mean this would be useless anyways
echo Hey weird man that is standing in front of this screen, ya you.
echo This setup requires sudo and basic GNU tools. u ok w/ that?
read
echo Great 'cause I'm not asking you anyways!

echo So here we go, time to copy the soft shortcuts!
sudo cp neovim.png  /usr/share/icons/neovim.png
sudo cp neovim.desktop /usr/share/applications/neovim.desktop

echo Copying our config...
cp -r /nvim_config/  ~/.config/nvim/

echo And done! Enjoy your stupid config with all my hate towards you
echo -GY

