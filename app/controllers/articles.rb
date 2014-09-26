Myaudi::App.controllers :articles do

  get :index do
    render 'articles/index'
  end
  
  get :show, map: 'articles/:id' do
    render 'articles/show'
  end

end