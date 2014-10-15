Myaudi::App.controllers :trips do
  get :show, map: '/trips/:journey' do
    @trip = Trip.hero
    @streets = Trip.redfern_to_nrth_syd
    render '/trips/show'
  end
end