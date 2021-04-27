#Update script of UserBot by @marshmello61
#Some fixes by @RoyalBoy69


repo="HyperTerminator-X"
rm -rf ${https://github.com/${HyperNotShroudX97}/${HyperTerminator-X}

echo "You're Running The HyperTerminator-X Updater Script"
echo " "
# Get username of user
echo -n "HyperNotShroudX97: "
read userName
echo " "

# Check if user has forked or has the same repo name
echo -n "Have you forked USERGE-X from code-rgb or has the same repo name i.e. USERGE-X? [y/n]: "
read fork
echo " "

if [[ "${fork}" == 'y' ]]; then
	git clone https://github.com/${HyperNotShroudX97}/${HyperTerminator-X}.git
	cd ${HyperTerminator-X}
elif [[ "${fork}" == 'n' ]]; then
	echo -n "Enter your repo name: "
	read repo
	git clone https://github.com/${userName}/${repo}.git
	cd ${repo}
else
        echo " "
        echo "You were only supposed to enter y or n"
        exit 1
fi

echo " "
echo "Updating Your HyperTerminator-X"
git pull https://github.com/code-rgb/USERGE-X.git
git diff
git commit -m "Stable_HTX_Updated"
git push
echo " "
echo "Updated HTX"
cd ..
rm -rf ${https://github.com/${HyperNotShroudX97}/${HyperTerminator-X}
