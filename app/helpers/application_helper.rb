module ApplicationHelper
  def title
    @title.present? ? @title : "Sample App"
  end

  def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
end
