Myaudi::App.controllers :cars do
  get :show, map: '/cars/:model' do
    auth

    @model = params[:model]

    if @model == 'locator'
      render '/cars/locator'
    else
      @grades = ['A+ maintaining', 'B- breaking', 'B cornering', 'C fuel efficiency', 'A+ acceleration']
      @drivers = Driver.all
      @trips = Trip.all
      render '/cars/show'
    end
  end

  get '/cars/:model/warranty' do
    auth
    render '/cars/warranty'
  end
end