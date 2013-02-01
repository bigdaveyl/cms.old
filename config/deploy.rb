require 'bundler/capistrano'

set :default_environment, {
  'PATH'         => "/opt/ruby/gems/bin:/sbin:/bin:/usr/sbin:/usr/bin:/usr/games:/usr/local/sbin:/usr/local/bin:/home/webpages/bin",
  'RUBY_VERSION' => 'ruby 1.9.3',
  'GEM_HOME'     => '/opt/ruby/gems',
  'GEM_PATH'     => '/opt/ruby/gems',
  'BUNDLE_PATH'  => '/opt/ruby/gems',
  'LANG'         => 'en_US.UTF-8'
}

set :bundle_cmd,          '/opt/ruby/gems/bin/bundle'
set :bundle_gemfile,      'Gemfile'
set :bundle_dir,          ''
set :bundle_flags,        ''
set :bundle_without,      [:development, :test]

default_run_options[:pty] = true
set :rake, "/opt/ruby/gems/bin/rake"

set :application, 'thelinuxgeek.org'
set :repository,  '.'

#set :scm, :subversion
set :scm, :none
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :deploy_via, :copy

set :checkout, 'export'

set :user, 'webpages' # Your username goes here
set :use_sudo, false
set :domain, 'c7vv.x.rootbsd.net' # Your domain goes here
set :applicationdir, "/usr/local/www/#{application}"
set :deploy_to, applicationdir

role :web, domain                 
role :app, domain                          
role :db,  domain, :primary => true

load 'deploy/assets'

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end

  desc "reload the database with seed data"
  task :seed do
    run "cd #{current_path}; rake db:seed RAILS_ENV=#{rails_env}"
  end

  task :restart, :roles => :app, :except => { :no_release => true } do
    run "cp -f ~/thelinuxgeek.org-files/BingSiteAuth.xml #{release_path}/public/BingSiteAuth.xml"  
    run "cp -f ~/thelinuxgeek.org-files/googlefd60b389ebf8ae61.html #{release_path}/public/googlefd60b389ebf8ae61.html"  
    run "cp -f ~/thelinuxgeek.org-files/application.rb #{release_path}/config/application.rb"  
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

namespace :db do  
  task :db_config, :except => { :no_release => true }, :role => :app do  
    run "cp -f ~/thelinuxgeek.org-files/database.yml #{release_path}/config/database.yml"  
    run "cp -f ~/thelinuxgeek.org-files/seeds.rb #{release_path}/db/seeds.rb"  
  end  
end  
  
after "deploy:finalize_update", "db:db_config"
