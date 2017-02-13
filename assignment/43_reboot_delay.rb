reboot "after 1 min " do
action :request_reboot
reason 'test'
delay_mins 1
end
