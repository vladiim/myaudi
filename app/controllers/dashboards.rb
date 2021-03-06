Myaudi::App.controllers :dashboards do
  get :index do
    render '/dashboards/index'
  end

  get :show, map: '/dashboards/:name' do
    name = params[:name].gsub('-', ' ')
    metric = Metric.find(name)
    render '/dashboards/show', locals: { metric: metric }
  end
end