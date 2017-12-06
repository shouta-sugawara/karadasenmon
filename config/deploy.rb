# config valid only for current version of Capistrano
lock '3.4.1'

set :application, 'karadasenmon'
set :repo_url, 'git@github.com:shouta-sugawara/karadasenmon.git'
set :user, 'ubuntu'
set :password, "ostp0114"
set :deploy_to, "/home/#{fetch(:user)}/apps/#{fetch(:application)}"

set :log_level, :debug

set :rbenv_type, :user
set :rbenv_ruby, '2.3.0'

set :linked_dirs, %w{log}

set :sidekiq_config, "#{current_path}/config/sidekiq.yml"

set :unicorn_service, -> { "unicorn_#{fetch(:application)}" }

namespace :deploy do
  desc "Install everything onto the server"
  task :install do
    on roles(:app) do
      execute :sudo, "apt-get -y update"
      execute :sudo, "apt-get -y upgrade --show-upgraded"
      execute :sudo, "apt-get -y install build-essential"
      execute :sudo, "apt-get -y install curl git"
      execute :sudo, "apt-get -y install libxslt-dev libxml2-dev"
      execute :sudo, "apt-get -y install libdjvulibre-dev libjpeg-dev libtiff-dev libwmf-dev libmagickcore-dev libmagickwand-dev libmagick++-dev"
      execute :sudo, "apt-get -y install imagemagick"
      execute :sudo, "apt-get -y install libcurl4-openssl-dev libffi-dev"
      execute :sudo, "apt-get -y install libav-tools"
      execute :sudo, "apt-get -y install libmysqlclient-dev"
      execute :sudo, "apt-get -y install language-pack-ja"
      execute :sudo, "apt-get -y install libsqlite3-dev"
      execute :sudo, "apt-get -y install mysql-client"
    end
  end
  after "deploy:install", "monit:install"
  after "deploy:install", "node:install"
  after "deploy:install", "rbenv:install"
  after "deploy:install", "nginx:install"

  desc "initialize server"
  task :init do
    invoke 'deploy:install'
    invoke 'unicorn:setup'
    invoke 'nginx:setup'
    invoke 'deploy'
    invoke 'unicorn:start'
  end

  # desc "Update crontab with whenever"
  # task :update_cron do
  #   on roles(:app) do
  #     within current_path do
  #       execute :bundle, :exec, "whenever --update-crontab #{fetch(:application)}"
  #     end
  #   end
  # end

  after :published, "unicorn:restart"
  # after :published, "deploy:update_cron"
end
