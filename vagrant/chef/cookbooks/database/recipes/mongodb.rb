execute "apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10" do
  user 'root'
end

=begin
execute "echo 'deb http://downloads.mongodb.org/distros/ubuntu dist 10gen >> /etc/apt/sources.list" do
  user 'root'
  not_if 'grep mongodb /etc/apt/sources.list'
end
=end

package "mongodb"
