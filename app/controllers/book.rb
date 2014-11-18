Myaudi::App.controllers :book do
  get :index, map: '/book/:type' do
    @type = StringHelper.unurl( params[:type] )
    @days = settings.days
    render '/book/show'
  end
end