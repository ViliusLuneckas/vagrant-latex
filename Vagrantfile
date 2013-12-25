# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "Latex on Fedora 18"
  config.vm.box_url = "http://static.stasiak.at/fedora-18-x86-2.box"

  config.vm.provision :shell, path: 'install_latex_and_lt_support.sh'
end