# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'soap'
set :deploy_user, 'deploy'
set :repo_url, 'git@github.com:bertomartin/soap.git'

# setup rvm
set :rbenv_type, :system
set :rbenv_ruby, '2.2.2'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}

#old release to keep
set :keep_releases, 5

#files we want symlinking to specific entries in shared
set :linked_files, %w{config/database.yml config/secrets.yml}

#dirs we want symlinking in shared
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :bundle_binstubs, nil

namespace :deploy do

  before :deploy, 'deploy:check_revision'
  after 'deploy:symlink:shared', 'deploy:compile_assets_locally'

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
