namespace :redis do
  desc "Flush redis completely"
  task :flush do
    Sidekiq.redis { |r| puts r.flushall }
  end
end
