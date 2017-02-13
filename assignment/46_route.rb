route '192.168.3.0/24' do
gateway '192.168.0.1'
device 'eth1'
action :delete
end

route '192.168.3.0/24' do
gateway '0.0.0.0'
device 'eth1'
action :delete
end
