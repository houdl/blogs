module ApplicationHelper

  def error_message_for(object, field, field_name=nil)
    text = ""
    if object &&
      object.errors.messages.has_key?(field.to_sym) &&
      object.errors.messages[field.to_sym].present?
      unless field_name.nil?
        message = field_name + object.errors.messages[field.to_sym].first.to_s
      else
        message = object.errors.full_messages_for(field.to_sym).first
      end
      text = content_tag(:div, message, :class => "alert-danger #{field}_error")
    end
    text.html_safe
  end

end
