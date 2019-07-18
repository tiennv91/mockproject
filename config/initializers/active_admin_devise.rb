module ActiveAdmin
  module Devise
    def self.controllers
      {
        sessions: "admin_users/sessions",
        registrations: "admin_users/registrations",
        confirmations: "admin_users/confirmations"
      }
    end
  end
end