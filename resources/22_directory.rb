%w[ /home/opstree /home/opstree/nested /home/opstree/nested/2nd_nested ].each do |path|
directory path do
owner 'root'
group 'root'
mode '0666'
action :create
end
end
