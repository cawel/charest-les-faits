module ApplicationHelper
  def filtering_by_reason
    !session[:filter_by_reason].nil?
  end
end
