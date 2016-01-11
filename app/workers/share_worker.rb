class ShareWorker < ActiveJob::Base

  include Sidekiq::Worker
  sidekiq_options :retry => 3

  include Sidetiq::Schedulable

  recurrence { daily }

  #need to configure heroku details https://devcenter.heroku.com/articles/procfile
  def perform

    start_time = Time.now
    puts "Opening Connection: #{start_time}"

    Share.all.each do | share | 
      share.load_share_data
      logger.info share.name+' data sucessfully loaded'
    end

    end_time = Time.now
    puts "Opening Connection: #{end_time}"

  end

end