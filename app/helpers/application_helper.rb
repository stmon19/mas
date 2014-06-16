module ApplicationHelper
  
  def format_default date
    date.strftime(t(:default, scope: [:date, :formats]))
  end

  def lb_to_br text
    text.gsub(/\r\n|\r|\n/, "<br>")
  end
end
