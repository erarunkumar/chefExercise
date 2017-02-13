remote_directory '/home' do
source '/etc/yum.repos.d/'
action :create
end
