#Package mysql-server tidak ada ketika vagrant dijalankan, sehingga harus di update dulu, baru bisa install.
execute "apt-get update" do
	user 'root'
end

require_recipe "database::mysql"
require_recipe "database::mongodb"
require_recipe "database::redis"
require_recipe "database::memcache"
require_recipe "database::beanstalkd"
