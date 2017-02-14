cookbook_file '/home/cookbook_opstree' do
source 'example_cookbook'
owner 'root'
group 'root'
mode '0777'
action :create
end
