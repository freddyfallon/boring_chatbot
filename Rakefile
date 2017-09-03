# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

namespace :db do

  def seed_database
      Rake::Task['db:seed'].invoke
  end

  task :post_migration_hook do
      at_exit { seed_database }
  end
end

Rake::Task['db:migrate'].enhance(['db:post_migration_hook'])
