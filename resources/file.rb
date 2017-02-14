file '/tmp/motd' do

  action :create
  mode '0755'
  group 'root'
  owner 'root
  content 'hello chef'
  
end

#action : delete for deleting files
