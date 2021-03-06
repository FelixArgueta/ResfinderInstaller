#!/bin/bash
#
echo "Please enter your username"
read varname
echo "thankyou $varname, now starting install process"
pip install tabulate biopython cgecore gitpython python-dateutil
cd /Users/$varname/Desktop
git clone https://git@bitbucket.org/genomicepidemiology/resfinder.git
cd resfinder
cd cge
git clone https://bitbucket.org/genomicepidemiology/kma.git
cd kma && make
cd /Users/$varname/Desktop/resfinder
git clone https://git@bitbucket.org/genomicepidemiology/resfinder_db.git db_resfinder
cd db_resfinder && python3 INSTALL.py non_interactive
cd ..
git clone https://git@bitbucket.org/genomicepidemiology/pointfinder_db.git db_pointfinder
cd db_pointfinder && python3 INSTALL.py non_interactive
cd ..
git clone https://git@bitbucket.org/genomicepidemiology/disinfinder_db.git db_disinfinder
cd db_disinfinder && python3 INSTALL.py non_interactive
cd /Users/$varname/Desktop
echo "Installation complete, but STOP"
echo "Need to install Blastn and add to PATH"
echo "go to ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/ and download 64-bit macOSx"
echo "extract blast file with right click 'export', make sure file names are same for path below"
echo "add these to PATH (via 'nano ~/.bash_profile')"
echo "/Users/$varname/.local/bin"
echo "/Users/$varname/Desktop/ncbi-blast-2.11.0+/bin"
