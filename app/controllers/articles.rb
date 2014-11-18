Myaudi::App.controllers :articles do

  get :index do
    auth
    render 'articles/index'
  end
  
  get :show, map: 'articles/:id' do
    auth
    render 'articles/show'
  end
end