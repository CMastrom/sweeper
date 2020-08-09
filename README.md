# sweeper
A simple, light-weight tool that allows you to erase unwanted History, Caches, Cookies, and Data that are being stored on your MacBook. As always, put this sweeper project file in your documents folder, and you can add a shortcut to the bash sweeper file by adding the following to your zshrc or bash_profile: 
alias sweeper='cd $HOME/Documents/sweeper; sh ./sweeper.sh; cd -'
Note that deleting certain caches erases preference data. For example, performing all the available removal tasks for Chrome via Sweeper will cause Chrome to forget any saved passwords and usernames that you may have had. Use at your own discretion!
