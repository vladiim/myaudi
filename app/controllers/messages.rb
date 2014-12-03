Myaudi::App.controllers :messages do
  get :index do
    render '/messages/index'
  end

  get :show, map: '/messages/:id' do
    message = Message.find(params[:id])
    render '/messages/show', locals: { message: message }
  end
end