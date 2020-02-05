# frozen_string_literal: true

class ApplicationController < ActionController::Base
    before_action :detect_locale

    # 現在のロケール設定でlocaleオプションをデフォルト設定
    def detect_url_options(options = {})
        { locale: I18n.locale }
    end

    private
        def detect_locale
            # ブラウザの設定からロケールを取得する
            # I18n.locale = request.headers['Accept-Language'].scan(/\A[a-z]{2}/).first
            # クエリ情報からロケールを変更する
            I18n.locale = params[:locale]
        end
end
