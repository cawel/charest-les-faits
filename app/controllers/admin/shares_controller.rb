# encoding: UTF-8
require 'net/http'
require 'uri'

class Admin::SharesController < AdminController

  def index
    @examples = Example.order("id ASC")
  end

  def trigger_fetch
    Example.all.each do |e|
      facebook_shares = fetch_facebook_shares(e.id) 
      e.update_attribute(:facebook_shares, facebook_shares)
      twitter_shares = fetch_twitter_shares(e.id) 
      e.update_attribute(:twitter_shares, twitter_shares)
    end
    redirect_to admin_shares_url
  end

  def fetch_twitter_shares id
    url = "http://charest-les-faits.com/exemples/#{id}"
    twitter_url = "http://urls.api.twitter.com/1/urls/count.json?url=" + url
    uri = URI.parse(twitter_url)
    response = Net::HTTP.get_response uri

    shares = 0
    begin
      jdoc = JSON.parse(response.body)
      shares = jdoc.fetch("count")
      shares.to_i
    rescue
      shares = 0
    end
    shares
  end

  def fetch_facebook_shares id
    url = "http://charest-les-faits.com/exemples/#{id}"
    fb_url = "http://graph.facebook.com/?ids=" + url
    uri = URI.parse(fb_url)
    response = Net::HTTP.get_response uri

    shares = 0
    begin
      jdoc = JSON.parse(response.body)
      shares = jdoc.fetch(url).fetch("shares")
      shares.to_i
    rescue
      shares = 0
    end
    shares
  end

end
