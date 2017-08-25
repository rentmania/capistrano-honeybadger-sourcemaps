load File.expand_path('../../tasks/sourcemaps.rake', __FILE__)

namespace :deploy do
  after :set_current_revision, 'honeybadger:sourcemaps:upload'
end

namespace :load do
  task :defaults do
    load "capistrano/honeybadger/sourcemaps/defaults.rb"
  end
end
