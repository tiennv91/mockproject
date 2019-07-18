
class AdminUsers::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:sign_up, keys: [:fullname, :email, :role_id])
  end
end