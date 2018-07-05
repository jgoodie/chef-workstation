package 'tree' do
	action [ :install ]
end

package 'vim-enhanced' do
	action [ :install ]
end

package 'git' do
	action [ :install ]
end

package 'ntp' do
	action [ :install ]
end

service 'ntpd' do
	action [ :enable, :start ]
end

file '/etc/motd' do
	content 'Property of me'
	mode '0644'
	owner 'root'
	group 'root'
end
