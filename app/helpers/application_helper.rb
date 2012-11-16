module ApplicationHelper
  def title
    @title.present? ? @title : "Sample App"
  end
end
