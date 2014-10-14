Myaudi::App.controllers :grades do
  get :show, map: '/grades/:grade' do
    @grade = StringHelper.unurl(params[:grade])
    render '/grades/show'
  end
end