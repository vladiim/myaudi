unless Padrino.env == :production
  require 'dotenv'
  Dotenv.load
end

module Myaudi
  class App < Padrino::Application
    register CoffeeInitializer
    register ScssInitializer
    register Padrino::Mailer
    register Padrino::Helpers
    register Padrino::Warden

    enable :sessions

    configure do
      set :days, %w( Mon Tue Wed Thur Fri Sat Sun )
    end

    get '/' do
      @user = env['warden'].user || NullUser.new

      if @user.null?
        render 'layouts/home'
      else
        render 'layouts/home_loggedin'
      end
    end

    Warden::Strategies.add(:password) do
      def valid?
        params["username"] || params["password"]
      end

      def authenticate!
        user = User.authenticate(params["username"], params["password"])
        user ? success!(user) : redirect!('/sessions/fail')
      end
    end

    Warden::Manager.serialize_into_session { |user| user.id }
    Warden::Manager.serialize_from_session { |id| User.get(id) }
  end
end
