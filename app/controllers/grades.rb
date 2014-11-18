Myaudi::App.controllers :grades do
  get :show, map: '/grades/:grade' do
    auth
    @grade = StringHelper.unurl(params[:grade])
    render '/grades/show'
  end
end