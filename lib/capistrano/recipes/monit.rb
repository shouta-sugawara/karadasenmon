namespace :monit do
  desc "install monit"
  task :install do
    on roles(:app) do
      execute :sudo, "apt-get -y install monit"
      monitrc = <<-MONITRC
set httpd port 2812
use address localhost  # only accept connection from localhost
allow localhost        # allow localhost to connect to the server and
allow admin:monit
MONITRC
      monitrc = StringIO.new(monitrc)
      upload! monitrc, "/tmp/monitrc"
      execute :sudo, "cat /tmp/monitrc /etc/monit/monitrc > ~/monitrc.tmp"
      execute :sudo, "mv ~/monitrc.tmp /etc/monit/monitrc"
      execute :sudo, "chmod 700 /etc/monit/monitrc"
      execute :sudo, "chown root /etc/monit/monitrc"
      execute :sudo, "monit reload"
    end
  end
end
