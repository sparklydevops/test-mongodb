provides :mongodb_install

action :install do

  baseurl = 'http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/'

  if node['kernel']['machine'] != 'x86_64'
    baseurl = 'http://downloads-distro.mongodb.org/repo/redhat/os/i686/'
  end

  template '/etc/yum.repos.d/mongodb.repo'  do
    variables(
      :baseurl => baseurl
    )
  end

  package 'mongodb-org' do
    action :install
  end

# Start MongoDB.
# # # ensure that MongoDB will start following a system reboot
  service 'mongod' do
    action [:start, :enable]
   end

end
