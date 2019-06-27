

echo drag the folder where you want the file to download into this terminal window
read download_folder
cd $download_folder

while true; do
    echo "which version would you like
    ╭───────────────────╮
    │m = master (stable)│
    │b = beta (unstable)│
    ╰───────────────────╯"
    read version
    if [ $version = b ]; then
        
        rm -rfv "$update_file_directry"
        git clone -b "beta_version-(experimental)" https://github.com/Evergreen1213/the-miny-terminal-idk2.git
        break
    elif [ $version = m ]; then
        rm -rfv "$update_file_directry"
        git clone https://github.com/Evergreen1213/the-miny-terminal-idk2.git
        break
    else
        echo "choose an option please:"
    fi
done
break


echo "choose an option please:"



#git clone https://github.com/Evergreen1213/the-miny-terminal-idk2.git; bash "/the-miny-terminal-idk2/download_and_run_the_github.bash"
