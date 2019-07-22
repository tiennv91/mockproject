module ApplicationHelper
  def hide_side_bar?
    controller_name == 'experience' && 
    (action_name == 'application_form' || action_name == 'confirm' || action_name == 'send_request' || action_name == 'payment' || action_name == 'complete')
  end

  def is_multiple_process_form?
    controller_name == 'experience' &&
    (action_name == 'application_form' || action_name == 'confirm' || action_name == 'send_request' || action_name == 'payment' || action_name == 'complete') 
  end



end
