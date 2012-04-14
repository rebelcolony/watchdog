module ApplicationHelper
  
  ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    errors = Array(instance.error_message).join(',')
    %(#{html_tag}<span class="validation-error">&nbsp;#{errors}</span>).html_safe
  end
  
  def markdown(text)
      options = [:filter_html, :autolink, :no_intraemphasis]
      Redcarpet.new(text, *options).to_html.html_safe
    end
  
end
