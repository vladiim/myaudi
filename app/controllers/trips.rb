Myaudi::App.controllers :trips do
  get :show, map: '/trips/:journey' do
    @trip = Trip.hero
    render '/trips/show'
  end
end