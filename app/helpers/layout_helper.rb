module LayoutHelper
  def flash_notice
    html = ''
    flash.each do |name, msg|
      html += content_tag :div, msg, :class => name
    end
    html.html_safe
  end
end