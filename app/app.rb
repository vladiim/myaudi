module Myaudi
  class App < Padrino::Application
    register CoffeeInitializer
    register ScssInitializer
    register Padrino::Mailer
    register Padrino::Helpers
    register Padrino::Warden

    enable :sessions

    get '/' do
      authorize! '/sessions/login'
      render 'layouts/home'
    end

    Warden::Strategies.add(:password) do
      def valid?
        params["username"] || params["password"]
      end

      def authenticate!
        user = User.authenticate(params["username"], params["password"])
        user.nil? ? fail!("Could not log in") : success!(user)
      end
    end

    Warden::Manager.serialize_into_session { |user| user.id }
    Warden::Manager.serialize_from_session { |id| User.get(id) }
  end
end
