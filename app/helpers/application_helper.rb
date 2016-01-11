module ApplicationHelper
  def flash_class flash_type
    case flash_type.to_sym
    when :info    then "alert-info"
    when :error   then "alert-danger"
    when :alert   then "alert-danger"
    when :success then "alert-success"
    when :notice  then "alert-success"
    when :warning then "alert-warning"
    end
  end

end
