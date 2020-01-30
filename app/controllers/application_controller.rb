class ApplicationController < ActionController::Base
    before_action :detect_locale

    private
        def detect_locale
            I18n.locale = request.headers['Accept-Language'].scan(/\A[a-z]{2}/).first
        end
end
