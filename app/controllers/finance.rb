Myaudi::App.controllers :finance do
  get :index do
    @models = Car.models
    render 'finance/index'
  end
end