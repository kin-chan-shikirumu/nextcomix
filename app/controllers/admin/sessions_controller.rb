module Admin
  class SessionsController < Devise::SessionsController
    protected

    # 管理者ログイン後のリダイレクト先をホーム画面に設定
    def after_sign_in_path_for(resource)
      tweets_path
    end
  end
end