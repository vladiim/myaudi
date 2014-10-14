Myaudi::App.controllers :cars do
  get :show, map: '/cars/:model' do
    @model = params[:model]
    @grades = ['A+ maintaining', 'B- breaking', 'B cornering', 'C fuel efficiency', 'A+ acceleration']
    @drivers = Driver.all
    @trips = Trip.all
    render '/cars/show'
  end
end