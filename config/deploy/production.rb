set :env_id, 'karadasenmon-production'
set :instance_count, 1
set :branch, :master

set :password, "ostp0114"
set :use_sudo, true

set :stage, :production
set :rails_env, :production

set :bundle_binstubs, nil
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/shared public/uploads node_modules}

role :app, %w{ubuntu@160.16.144.7}
role :web, %w{ubuntu@160.16.144.7}
role :db, %w{ubuntu@160.16.144.7}

set :whenever_roles, :batch

set :ssh_options, {
  keys: [File.expand_path('~/.ssh/id_karadasenmon_rsa')],
  forward_agent: true,
  port: 22,
  auth_methods: %w(publickey),
  password: "ostp0114"
}
