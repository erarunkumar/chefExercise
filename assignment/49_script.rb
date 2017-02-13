script 'install_something' do
  interpreter 'bash'
  user 'root'
  cwd '/tmp'
  code <<-EOH
  wget https://tuxera.com/opensource/ntfs-3g_ntfsprogs-2016.2.22.tgz
  tar -zxf  ntfs-3g_ntfsprogs-2016.2.22.tgz
  cd /tmp/ntfs-3g_ntfsprogs-2016.2.22
  ./configure
  make
  make install
  EOH
end
