Myaudi::App.controllers :services do
  get :show, map: '/services/:year/:month/:day' do
    auth
    render '/services/show'
  end
end