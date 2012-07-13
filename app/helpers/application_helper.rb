module ApplicationHelper
  def filtering_by_reason
    !session[:filter_by_reason].nil?
  end

  def current_reason? reason
    session[:filter_by_reason] == reason.id.to_s
  end
end
