class AuthenticationController < ApplicationController

  skip_before_action :authorize, only: :login

  def login
    @user = User.find_by username: params[:username]

    if !@user
      render(
        json: { message: 'Invalid username or password.' },
        status: :unauthorized
      ) 
    else

      if !@user.authenticate params[:password]
        render(
          json: { message: 'Invalid username or password.' },
          status: :unauthorized
        )
      else
        payload = { user: @user }
        secret = Rails.application.secret_key_base[0]
        @token = JWT.encode(payload, secret)

        render json: { user: @user, token: @token }, status: :ok
  end
end
end
end
