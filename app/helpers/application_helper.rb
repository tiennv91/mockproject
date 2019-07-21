module ApplicationHelper
  def hide_side_bar?
    controller_name == 'experience' && action_name == 'application_form'
  end
end
