Myaudi::App.controllers :cms do
  get :index do
    auth
    render '/cms/index'
  end
end