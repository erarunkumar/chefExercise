execute 'start-tomcat' do
  command '/etc/init.d/tomcat6 start'
  action :run
end
