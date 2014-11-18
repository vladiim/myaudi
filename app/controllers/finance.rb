Myaudi::App.controllers :finance do
  get :index do
    auth
    @models = Car.models
    render 'finance/index'
  end
end