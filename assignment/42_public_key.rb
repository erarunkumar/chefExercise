public_key 'public_key' do
source_key_path '/root/.chef/keys/workstation'	
action :create
end

public_key 'public_pem' do

source_key_path	'/root/.chef/keys/workstation_pem'
action :create
end
