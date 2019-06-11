# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  def after_sign_in_path_for(resource)
    puts current_user.id
    books_path
  end
  
  def after_sign_out_path_for(resource)
    puts resource
    if resource == :user
      new_user_session_path
  end
end 
 # def current_user
  #  @current_user ||= User.find_by(id: session[:user_id])
  #end
  # GET /resource/sign_in
#    def new    
#      super
#    end

#  #  POST /resource/sign_in
#    def create
#     super
#     #  puts 'okay'
#     #  puts current_user.id
#    end

# #  DELETE /resource/sign_out
#   def destroy
#     super
#   end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
