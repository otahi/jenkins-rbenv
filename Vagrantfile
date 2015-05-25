# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'dduportal/boot2docker'

  if ENV['http_proxy']
    if Vagrant.has_plugin?("vagrant-proxyconf")
      config.proxy.http     = ENV['http_proxy']
      config.proxy.https    = ENV['https_proxy']
      config.proxy.no_proxy = false
    end
  end

end
