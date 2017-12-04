require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/rbenv"
require 'capistrano/bundler'
require 'capistrano/rails'
require 'capistrano/rails/migrations'
require 'capistrano/sidekiq'
require 'capistrano/sidekiq/monit'
require "whenever/capistrano"
require "capistrano/sitemap_generator"

Dir.glob('lib/capistrano/recipes/*.rb').each { |r| import r }
