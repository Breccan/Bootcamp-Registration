set :rails_env, (ENV['RAILS_ENV'] ? ENV['RAILS_ENV'] : 'production')

set :application, 'bootcamp'
set :repository, 'git@github.com:Breccan/Bootcamp-Registration.git'
set :deploy_to, "/apps/#{application}"

# server 'howireallyfeel.org', :app, :db, :web
server '74.207.231.108', :app, :db, :web

default_run_options[:pty] = true
set :ssh_options, { :forward_agent => true }
set :use_sudo, false
set :user, 'root'  # TODO: This should probably be changed to a proper deploy user.

set :scm, :git
set :deploy_via, :remote_cache
set :shallow_clone, 1
set :branch, 'master'

namespace :db do
  desc 'Migrate the database'
  task :migrate, :roles => :app do
    run "cd #{current_path} && RAILS_ENV=production rake db:migrate"
  end
end

namespace :deploy do
  desc 'Restart Passenger'
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
end

after 'deploy:setup' do
  # Create directory to hold the configs.
  run "mkdir #{shared_path}/config"
end

