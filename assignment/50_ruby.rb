ruby 'extract_module' do
  cwd ::/tmp/ntfs-3g_ntfsprogs-2016.2.22.tgz
  code <<-EOH
    mkdir -p #{extract_path}
    tar xzf #{src_filename} -C #{extract_path}
    mv #{extract_path}/*/* #{extract_path}/
    EOH
  not_if { ::File.exist?(extract_path) }
end
