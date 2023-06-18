class SessionController < ApplicationController
    def def create
      if @user.login
        redirect_to :root, notice: "ログインに成功しました。"
      else
        flash.now[:alert] = "ログインに失敗しました。"
      end
    end
end