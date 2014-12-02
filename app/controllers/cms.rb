Myaudi::App.controllers :cms do
  get :index do
    content_list = Content.list
    render '/cms/index', locals: { content_list: content_list }
  end

  get :show, map: '/cms/:id/:name' do
    content = Content.find(params[:id])
    render '/cms/show', locals: { content: content }
  end

  get :new do
    content = NullContent.new
    render '/cms/new', locals: { content: content }
  end
end