Myaudi::App.controllers :dashboards do
  get :index do
    render '/dashboards/index'
  end

  get :show, map: '/dashboards/:name' do
    metric = Metric.find(params[:name])
    render '/dashboards/show', locals: { metric: metric }
  end
end