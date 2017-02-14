batch 'mkdir satish' do
 code "mkdir satish"
 cwd Chef::Config[:file_cache_path]
 user "root"
 password "1233"
end

