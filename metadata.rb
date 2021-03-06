name             'workstation'
maintainer       'Arthur Maltson'
maintainer_email 'arthur@maltson.com'
license          'MIT'
description      'Installs/Configures an OS X workstation'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.1'

depends 'homebrew', '~> 2.1'
depends 'dotfiles'
