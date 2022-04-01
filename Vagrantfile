VAGRANT_BOX = 'debian/contrib-buster64'
VM_HOSTNAME = 'docker1'
VM_NETWORK = 'vboxnet1'
VM_MAC = '080027000020'
VM_IP = '192.168.60.20'
VM_MEMORY = '2048'
VM_CPUS = '2'

Vagrant.configure('2') do |config|
  config.vm.box = VAGRANT_BOX
  config.vm.hostname = VM_HOSTNAME
  config.vm.network 'private_network',
                    name: VM_NETWORK,
                    mac: VM_MAC,
                    ip: VM_IP,
                    adapter: 1,
                    auto_config: false
  config.ssh.host = VM_IP
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.synced_folder '/Users/bfraser', '/bfraser'
  config.vm.provider 'virtualbox' do |vm|
    vm.name = VM_HOSTNAME
    vm.memory = VM_MEMORY
    vm.cpus = VM_CPUS
  end
  config.vm.provision 'docker' do |d|
    d.post_install_provision 'shell', path: 'scripts/docker-compose.sh'
  end
end
