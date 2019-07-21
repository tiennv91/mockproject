module ApplicationHelper
  def hide_side_bar?
    controller_name == 'experience' && action_name == 'application_form'
  end

  def is_multiple_process_form?
    controller_name == 'experience' && action_name == 'application_form'
  end

end
