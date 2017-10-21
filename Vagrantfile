Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--ostype", "Ubuntu_64"]
  end
  config.vm.provision "docker" do |d|
    d.build_image "/vagrant", args: "-t bunta.fujikawa/test"
    d.run "bunta.fujikawa/test", args: "-d -t -v /vagrant:/tmp/shared"
  end

end
