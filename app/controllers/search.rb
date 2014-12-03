Myaudi::App.controllers :search do
  get :index, map: '/search/:term' do
    render '/search/index', locals: { term: StringHelper.unurl( params[:term]) }
  end
end