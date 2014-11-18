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

    if Padrino.env == :production
      use Rack::Auth::Basic, "Sign in to access the myAudi Prototype" do |username, password|
        username == ENV['ADMIN_E'] && password == ENV['ADMIN_P']
      end
    end

    get '/' do
      auth
      @user = env['warden'].user || NullUser.new

      if @user
        render 'layouts/home_loggedin'
      else
        render 'layouts/home'
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

    private

    def auth
      # authorize!('/sessions/login') if Padrino.env == :production
    end
  end
end
