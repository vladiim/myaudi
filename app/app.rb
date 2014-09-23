module Myaudi
  class App < Padrino::Application
    register CoffeeInitializer
    register ScssInitializer
    register Padrino::Mailer
    register Padrino::Helpers
    register Padrino::Warden

    enable :sessions

    get '/' do
      auth
      render 'layouts/home'
    end

    Warden::Strategies.add(:password) do
      def valid?
        params["username"] || params["password"]
      end

      def authenticate!
        user = User.authenticate(params["username"], params["password"])
        # user ? success!(user) : fail!("Could not log in")
        if user
          success user
        else
          # require 'debugger'; debugger
          # fail!("Could not log in")
          redirect! '/sessions/fail'
        end
        true
      end
    end

    Warden::Manager.serialize_into_session { |user| user.id }
    Warden::Manager.serialize_from_session { |id| User.get(id) }

    private
    def auth
      authorize! '/sessions/login'
    end
  end
end
