module ApplicationHelper
  def filtering_by_reason
    !session[:filter_by_reason].nil?
  end

  def current_reason? reason
    session[:filter_by_reason] == reason.id.to_s
  end

  def clean_link url
    url.sub(/^http:\/\//,'').sub(/[w.]*/,'').sub(/\/.*/,"")
  end
end
