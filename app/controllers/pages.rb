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

  get :owners_leaderboard, map: '/pages/owners_leaderboard' do
    render '/pages/owners_leaderboard'
  end
end