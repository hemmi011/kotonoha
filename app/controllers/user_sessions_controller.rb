class UserSessionsController < ApplicationController
    # user_sessionはログインしている状態を表すためのもん
    skip_before_action :require_login, only: %i[new create]

    def new; end

    def create
        @user = User.find_by(email: params[:email])&.authenticate(params[:password])

        if @user
            session[:user_id] = @user.id
            redirect_to root_path, success: 'ログインが完了しました'
        else
            flash.now[:notice] = "ログインに失敗しました"
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
        logout
        redirect_to root_path, status: :see_other
    end
end

