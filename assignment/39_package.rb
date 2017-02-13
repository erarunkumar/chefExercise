#Creating Package resource  
#	action [:install]
package 'apache' do
case node[:platform]
when 'redhat', 'centos'
package_name 'httpd'
when 'ubuntu', 'debian'
package_name 'apache2'
end
end

package 'ntp' do
action [:install]
end
