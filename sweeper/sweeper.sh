#!/bin/bash
echo "SWEEPER -- VERSION 1.0.0"
echo "------------------------"
echo "OPTIONS (type the corresponding letter):"
echo "a. Clear Your Thumbnail cache"
echo "b. Clear Your Clipboard"
echo "c. Nuke Your Bash History"
echo "d. Nuke Your ZShell History"
echo "e. Nuke Your Chrome Cache"
echo "f. Nuke Your Chrome JS Cache"
echo "g. Delete Contents of Chrome's History Database"
echo "h. Delete Contents of Chrome's Cookie and Extension Cookies Database"
echo "i. Delete Contents of Chrome's Login Data Database"
echo "j. Delete Contents of Chrome's Media History Database"
echo "k. Delete Contents of Chrome's Top Sites Database"
echo "l. Delete Contents of Chrome's Web Data Database"
echo "m. Delete Contents of Chrome's Shortcuts Database"
echo "n. Delete Contents of Chrome's Favicons Database"
echo "o. Nuke Your MySQL History"
echo "p. Nuke Your Python History"
echo "q. Nuke Your SQLite History"
echo "r. Clear Your Trash Bin (DOES NOT WORK WITH SIP PROTOTCOL ENABLED)"
echo "s. Nuke Sublime Text's Cache Databases"
echo "t. Nuke Visual Studio Code's Cache Databases"
echo "u. Nuke PowerPoint's Cache Databases"
echo "v. Nuke Excel's Cache Databases"
echo "w. Nuke Apple's Spotlight Cache Databases"
echo "x. Nuke Safari's Cache Databases"
echo "y. Nuke Zoom's Cache Databases and Zoom's Cookies (I suggest just nuking Zoom altogether)"
echo "*. Do all of it"
echo "exit. To exit, simply hit enter without inputting in any of these options above."
echo "NOTE: Typing 'exit' DOES NOT exit the program, it will run options e, x, i, and t!"
echo "NOTE: You can select multiple tasks by typing in each corresponding letter (you can use a space or not use a space inbetween)"
echo "NOTE: If you want to use an operation that targets Chrome, then you have to completely quit out of Chrome before running this program."
echo "NOTE: Terminology: Nuke means this program will completely remove it, Clear means this program will completely erase the contents of the given file(s), and Delete Contents means this program will delete all rows of data in a given database(s)."
echo "NOTE: Some of these operations require that you have downloaded and used a specific software (for example, if you don't have Chrome then all of the Chrome operations in this program will fail)."
echo "NOTE: If a given operation fails, it will display the actual error, which just indicates that whatever we tried to do failed."
echo "WARNING: Nuking operations does not guarantee that the given file(s) will re-create themselves again once they are needed. Although most nuked files, if not all, will re-create themselves (like history logs)."
echo "WARNING: Cache data is stored to make life easier for the user, they store info to make runtime faster. So removing certain chrome cache may upset your chrome experience. Like it might not remember previously saved passwords and usernames once you clear the cache)"
echo "------------------------"
read -p "(: " response

if [[ "$response" == *"a"* ]] || [[ "$response" == "*" ]]
then
    # Clear thumbnail cache
    echo "Clearing your thumbnail cache..."
    qlmanage -r cache
fi

if [[ "$response" == *"b"* ]] || [[ "$response" == "*" ]]
then
    # Clear clipboard
    echo "\nClearing your clipboard..."
    pbcopy < /dev/null
fi

if [[ "$response" == *"c"* ]] || [[ "$response" == "*" ]]
then
    # Remove bash history
    echo "\nNuking your bash history..."
    rm ~/.bash_history
fi

if [[ "$response" == *"d"* ]] || [[ "$response" == "*" ]]
then
    # Remove zsh history
    echo "\nNuking your zshell history..."
    rm ~/.zsh_history
fi

if [[ "$response" == *"e"* ]] || [[ "$response" == "*" ]]
then
    # Remove Chrome's cache
    echo "\nNuking your Chrome cache..."
    rm -rf $HOME/Library/Caches/Google/Chrome/Default/Cache/
fi

if [[ "$response" == *"f"* ]] || [[ "$response" == "*" ]]
then
    # Remove Chrome's JS cache
    echo "\nNuking your Chrome JS cache..."
    rm -rf $HOME/Library/Caches/Google/Chrome/Default/"Code Cache"/js/
fi

if [[ "$response" == *"g"* ]] || [[ "$response" == "*" ]]
then
    # Clear Chrome's SQLite3 History DB
    echo "\nDeleting Chrome's History Database Contents (tables urls, downloads, downloads_url_chains, keyword_search_terms, and segments)..."
    sqlite3 $HOME/Library/"Application Support"/Google/Chrome/Default/History "delete from urls;" "delete from downloads;" "delete from downloads_url_chains;" "delete from keyword_search_terms;" "delete from segments;" ".quit"
fi

if [[ "$response" == *"h"* ]] || [[ "$response" == "*" ]]
then
    # Remove Chrome's SQLite3 Cookies
    echo "\nDeleting Chrome's Cookies Database Contents (table cookies)..."
    sqlite3 $HOME/Library/"Application Support"/Google/Chrome/Default/Cookies "delete from cookies;" ".quit"

    # Remove Chrome's SQLite3 Extension Cookies
    echo "\nDeleting Chrome's Extension Cookies Database Contents (table cookies)..."
    sqlite3 $HOME/Library/"Application Support"/Google/Chrome/Default/"Extension Cookies" "delete from cookies;" ".quit"
fi

if [[ "$response" == *"i"* ]] || [[ "$response" == "*" ]]
then
    # Clear Chrome's Saved Login History
    echo "\nDeleting Chrome's Login Data Database Contents (table logins)..."
    sqlite3 $HOME/Library/"Application Support"/Google/Chrome/Default/"Login Data" "delete from logins;" ".quit"
fi

if [[ "$response" == *"j"* ]] || [[ "$response" == "*" ]]
then
    # Clear Chrome's Saved Media History
    echo "\nDeleting Chrome's Media History Database Contents (tables playback and playbackSession)..."
    sqlite3 $HOME/Library/"Application Support"/Google/Chrome/Default/"Media History" "delete from playback;" "delete from playbackSession;" ".quit"
fi

if [[ "$response" == *"k"* ]] || [[ "$response" == "*" ]]
then
    # Clear Chrome's Saved Top Sites
    echo "\nDeleting Chrome's Top Sites Database Contents (table top_sites)..."
    sqlite3 $HOME/Library/"Application Support"/Google/Chrome/Default/"Top Sites" "delete from top_sites;" ".quit"
fi

if [[ "$response" == *"l"* ]] || [[ "$response" == "*" ]]
then
    # Clear Chrome's Saved Web Data
    echo "\nDeleting Chrome's Web Data Database Contents (tables autofill and keywords)..."
    sqlite3 $HOME/Library/"Application Support"/Google/Chrome/Default/"Web Data" "delete from autofill;" "delete from keywords;" ".quit"
fi

if [[ "$response" == *"m"* ]] || [[ "$response" == "*" ]]
then
    # Clear Chrome's Saved Shortcuts
    echo "\nDeleting Chrome's Shortcuts Database Contents (table omni_box_shortcuts)..."
    sqlite3 $HOME/Library/"Application Support"/Google/Chrome/Default/"Shortcuts" "delete from omni_box_shortcuts;" ".quit"
fi

if [[ "$response" == *"n"* ]] || [[ "$response" == "*" ]]
then
    # Clear Chrome's Saved Favicons
    echo "\nDeleting Chrome's Favicons Database Contents (tables favicon_bitmaps, favicons, and icon_mapping)..."
    sqlite3 $HOME/Library/"Application Support"/Google/Chrome/Default/"Favicons" "delete from favicon_bitmaps;" "delete from favicons;" "delete from icon_mapping;" ".quit"
fi

if [[ "$response" == *"o"* ]] || [[ "$response" == "*" ]]
then
    # Delete MySQL history
    echo "\nNuking your MySQL History..."
    rm $HOME/.mysql_history
fi

if [[ "$response" == *"p"* ]] || [[ "$response" == "*" ]]
then
    # Delete Python History
    echo "\nNuking your Python History..."
    rm $HOME/.python_history
fi

if [[ "$response" == *"q"* ]] || [[ "$response" == "*" ]]
then
    # Delete SQLite History
    echo "\nNuking your Sqlite History..."
    rm $HOME/.sqlite_history
fi

if [[ "$response" == *"r"* ]] || [[ "$response" == "*" ]]
then
    # Clear the trash folder
    echo "\nClearing your Trash Bin..."
    rm -rf $HOME/.Trash/*
fi

if [[ "$response" == *"s"* ]] || [[ "$response" == "*" ]]
then
    # Nuke com.sublimetext.3
    echo "\nNuking Sublime Text's Cache Databases..."
    rm -rf $HOME/Library/Caches/com.sublimetext.3
fi

if [[ "$response" == *"t"* ]] || [[ "$response" == "*" ]]
then
    # Nuke Visual Studio Code Cache
    echo "\nNuking Visual Studio Code's Cache Databases..."
    rm -rf $HOME/Library/Caches/com.microsoft.VSCode
fi

if [[ "$response" == *"u"* ]] || [[ "$response" == "*" ]]
then
    # Nuke PowerPoint's Cache
    echo "\nNuking PowerPoint's Cache Databases..."
    rm -rf $HOME/Library/Caches/com.microsoft.Powerpoint
fi

if [[ "$response" == *"v"* ]] || [[ "$response" == "*" ]]
then
    # Nuke Excel's Cache
    echo "\nNuking Excel's Cache Databases..."
    rm -rf $HOME/Library/Caches/com.microsoft.Excel
fi

if [[ "$response" == *"w"* ]] || [[ "$response" == "*" ]]
then
    # Nuke Apple's Spotlight Cache
    echo "\nNuking Apple's Spotlight Cache Databases..."
    rm -rf $HOME/Library/Caches/com.apple.Spotlight
fi

if [[ "$response" == *"x"* ]] || [[ "$response" == "*" ]]
then
    # Nuke Safari's Cache
    echo "\nNuking Safari's Cache Databases..."
    rm -rf $HOME/Library/Caches/com.apple.Safari
fi

if [[ "$response" == *"y"* ]] || [[ "$response" == "*" ]]
then
    # Nuke Zoom's Cache and Cookies
    echo "\nNuking Zoom's Cache Databases and Cookies..."
    rm -rf $HOME/Library/Caches/us.zoom.xos
    rm -rf $HOME/Library/Cookies/us.zoom.xos.binarycookies
fi