bash "hello world" do
 user "root"
 cwd "/home"
 code <<-EOH
 echo “Hello World!”
 
 ls
 EOH
end
