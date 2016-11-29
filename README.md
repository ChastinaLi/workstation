# workstation

[![Build Status](http://img.shields.io/travis/amaltson/workstation.svg)](https://travis-ci.org/amaltson/workstation)
[![Code Climate](http://img.shields.io/codeclimate/github/amaltson/workstation.svg)](https://codeclimate.com/github/amaltson/workstation)
[![Code Climate Coverage](http://img.shields.io/codeclimate/coverage/github/amaltson/workstation.svg)](https://codeclimate.com/github/amaltson/workstation)

This cookbook sets up my workstations. Currently there are two variants
represented as two cookbooks:

- `imac` - home computer
- `work-mbp` - work laptop

### Usage

To run this cookbook, you'll need to:

- install XCode or the CLI tools.
- install [homebrew](http://brew.sh).
- install [oh-my-zsh](http://ohmyz.sh).
- install [chef-client](https://downloads.chef.io/chef-client/) or
  [ChefDK](https://downloads.chef.io/chef-dk/).
- download the latest [release](https://github.com/amaltson/workstation/releases)
- untar
- execute `chef-client -z -j solo.json`
