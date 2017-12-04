namespace :node do
  desc "install node, npm"
  task :install do
    on roles(:app) do
      execute "curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -"
      execute :sudo, "apt-get install -y nodejs"
    end
  end
end
