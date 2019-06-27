while true; do

    echo drag the folder where you want the file to download into this terminal window
    read download_folder
    if [ -d "$download_folder" ]; then
        echo directory exists
        cd $download_folder
        clear
        break
    else
        echo "nope, not a directory! Try again."
    fi
done
while true; do
    echo "which version would you like
    ╭───────────────────╮
    │m = master (stable)│
    │b = beta (unstable)│
    ╰───────────────────╯"
    read version
    if [ $version = b ]; then
        git clone -b "beta_version-(experimental)" https://github.com/Evergreen1213/the-miny-terminal-idk2.git
        
        break
    elif [ $version = m ]; then
        git clone https://github.com/Evergreen1213/the-miny-terminal-idk2.git

        break
    else
        echo "choose an option please:"
        clear
    fi
done
bash "the-miny-terminal-idk2/mainCode_launcher.bash"


#git clone -b "beta" https://github.com/Evergreen1213/the_downloader.git; bash "the_downloader/downloader.bash"
#git clone https://github.com/Evergreen1213/the_downloader.git; bash "/the_downloader/downloader.bash"