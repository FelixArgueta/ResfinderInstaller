This script only works in Lunix-ubuntu (resfinder only works in unix based systems)
This script installs resfinder, kma, resfinder_db, pointfinder_db, disinfinder_db
and compiles the C programs for kma, and all databases.

(windows is not recommended to download resfinder because it lacks c compilers)

The dependencies are as follows,
pip3,
git.
Install these dependencies using,
sudo apt install git-all ,
sudo apt install python3-pip .
Make sure to change execution permissions for resfinder_install.sh
Do this by,
chmod +x resfinder_install.sh .
Run the script by
./resfinder_install.sh .
Don't run the script from /home/(username)/Desktop, you might get an error
This script does not add files to PATH, and does not download blast. Follow the
instructions at the end of the script.
Resfinder respository and README can be found at
bitbucket.org/genomicepidemiology/resfinder/src/master
