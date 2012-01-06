class FeedEntry < ActiveRecord::Base
  require 'feedzirra'
  def self.update_from_feed(feed_url)
    feed =  Feedzirra::feed.fetch_and_parse("http://feeds.feedburner.com/railscasts")
    feed.entry.each do |entry|
      unless exist? :guid => entry.id
        create!(
          :name => entry.title,
          :summary => entry.summary,
          :url => entry.url,
          :published_at => entry.published_at,
          :guid => entry.guid
        )
      end
    end
  end
end   
