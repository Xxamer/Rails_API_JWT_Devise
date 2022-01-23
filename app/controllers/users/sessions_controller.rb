class Users::SessionsController < Devise::SessionsController
    respond_to :json
    private
    def respond_with(resource, _opts = {})
        unless current_user.nil?
        render json: {
            message: 'Logged in.',
            user: current_user,
        }, status: :ok
        else
            render json: {
                message: 'No valid token.',
            }, status: :unprocessable_entity
        end
    end

    def respond_to_on_destroy
        log_out_success && return if current_user

        log_out_failure
    end

    def log_out_success
        render json: { message: 'Log out succesfully'}, status: :ok
    end

    def log_out_failure 
        render json: { message: 'Wtf how did you do that? Awesome'}, status: :unauthorized
    end
end