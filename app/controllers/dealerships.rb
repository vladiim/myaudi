Myaudi::App.controllers :dealerships do
  get :index do
    render '/dealerships/index'
  end
end