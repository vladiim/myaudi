Myaudi::App.controllers :sessions do
  
  get :fail do
    render 'sessions/fail'
  end

  post :create, map: 'sessions/create' do
    user = User.new
    current_user = user.authenticate(params[:email], params[:password])
    redirect '/sessions/fail' if !current_user
    env['warden'].set_user(current_user)
    redirect '/'
  end

  get :logout, map: '/logout' do
    env['warden'].logout
    redirect '/'
  end
end
