Myaudi::App.controllers :pages do
  get :home_with_booking, map: '/pages/home_with_booking' do
    content_list = Content.list
    render '/pages/home_with_booking', locals: { content_list: content_list }
  end

  get :update_profile, map: '/pages/update_profile' do
    render '/pages/update_profile'
  end

  get :home_welcome, map: '/pages/home_welcome' do
    render '/pages/home_welcome'
  end

  get :forgot_password, map: '/pages/forgot_password' do
    render '/pages/forgot_password'
  end

  get :analytics_email, map: '/pages/analytics_email' do
    render '/pages/analytics_email'
  end

  get :login, map: '/login' do
    render '/pages/login'
  end

  get :register_car, map: '/pages/register_car' do
    render '/pages/register_car'
  end

  get :register_car_onboarding, map: '/pages/register-car-onboarding' do
    @drivers = Driver.all
    @model = 'rs4'
    @grades = ['A+ maintaining', 'B- braking', 'B cornering', 'C fuel efficiency', 'A+ acceleration']
    @trips = Trip.all
    render '/pages/register_car_onboarding'
  end

  get :services, map: '/pages/services' do
    render '/pages/services'
  end

  get :feedback, map: '/pages/feedback' do
    render '/pages/feedback'
  end

  get :driver_ranking, map: '/pages/driver-ranking' do
    @drivers = Driver.all
    render '/pages/driver_ranking'
  end

  get :trips, map: '/pages/trips' do
    @trips = Trip.all
    render '/pages/trips'
  end
end