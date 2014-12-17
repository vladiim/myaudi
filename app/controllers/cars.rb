Myaudi::App.controllers :cars do
  get :show, map: '/cars/:model' do

    @model = params[:model]

    if @model == 'locator'
      render '/cars/locator'
    else
      @grades = ['A+ maintaining', 'B- braking', 'B cornering', 'C fuel efficiency', 'A+ acceleration']
      @drivers = Driver.all
      @trips = Trip.all
      render '/cars/show'
    end
  end

  get '/:model/warranty' do
    render '/cars/warranty'
  end

  get '/:model/resale' do
    render '/cars/resale'
  end
end