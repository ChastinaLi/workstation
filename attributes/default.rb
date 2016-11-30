default['workstation']['formulas'] = %w(
    ansible
    autojump
    cowsay
    ctags
    docker
    dos2unix
    fzf
    git
    gnu-sed
    gnu-time
    go
    graphviz
    htop-osx
    hub
    imagemagick
    jq
    keybase
    libxml2
    maven
    neovim
    node
    openssl
    packer
    phantomjs
    postgresql
    pstree
    pv
    python
    reattach-to-user-namespace
    sqlite
    ssh-copy-id
    sudolikeaboss
    terraform
    the_silver_searcher
    tig
    tmux
    tree
    vim
    watch
    wget
    wireshark
    youtube-dl
    zsh
)

default['homebrew']['casks'] = %w(
    anybar
    atom
    caffeine
    chefdk
    firefox
    fitbit-connect
    flux
    github-desktop
    iterm2
    java
    licecap
    macvim
    seil
    tomighty
    vagrant
)

default['homebrew']['taps'] = %w(neovim/neovim ravenac95/sudolikeaboss)

default['workstation']['user'] = ENV['SUDO_USER'] || ENV['USER']
