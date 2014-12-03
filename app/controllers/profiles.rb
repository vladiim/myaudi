Myaudi::App.controllers :profiles do
  get :show, map: '/profile' do
    profile = @user = env['warden'].user || NullUser.new
    render '/profiles/show', locals: { profile: profile }
  end
end