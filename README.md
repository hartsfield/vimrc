# vimrc
My .vimrc for Golang/Bolt/Web

Install Vim Plug first, then open vim and run `:PlugInstall`

Instructions for compiling vim with the clipboard+terminal+other necessary features:

Find your distros equivalent of `build-dep` https://unix.stackexchange.com/questions/326047/does-dnf-have-an-equivalent-to-apts-build-dep

Use the command from the previous step to install the build dependencies for vim, on Fedora this is:

    sudo dnf builddep vim
    
Clone the vim source code repository: https://github.com/vim/vim

cd into the repository

run:

    ./configure --with-features=huge --enable-terminal=yes
    make
    sudo make install

![Screenshot from 2023-08-25 00-22-02](https://github.com/hartsfield/vimrc/assets/30379836/dc59a4e1-c5a7-4119-83ac-6f842cc6ae77)
