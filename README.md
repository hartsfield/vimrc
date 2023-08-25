# vimrc
My .vimrc for Golang/Bolt/Web

Install VimPlug first, then open vim and run `:PlugInstall`

## Instructions for compiling vim with the clipboard+terminal+other necessary features:

1. Find your distros equivalent of `build-dep`: https://unix.stackexchange.com/questions/326047/does-dnf-have-an-equivalent-to-apts-build-dep
2. Use the command from the previous step to install the build dependencies for vim, on Fedora this is:

        $ sudo dnf builddep vim
3. Clone the vim source code repository: https://github.com/vim/vim
4. cd into the repository
5. run:

        $ ./configure --with-features=huge --enable-terminal=yes
        $ make
        $ sudo make install

![Screenshot from 2023-08-25 00-22-02](https://github.com/hartsfield/vimrc/assets/30379836/dc59a4e1-c5a7-4119-83ac-6f842cc6ae77)
