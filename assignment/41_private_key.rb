private_key 'workstation1_rsa' do
  action :create
end

private_key 'workstation1_dsa' do
	action :create
	type :dsa
end

private_key 'workstation_pem' do
	action :create
	format	:pem
end
