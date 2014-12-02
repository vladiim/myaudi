Myaudi::App.controllers :dashboards do
  get :index do
    render '/dashboards/index'
  end

  get :show, map: '/dashboards/:name' do
    metric = Metric.find(params[:name])
    # metric = OpenStruct.new(name: params[:name], variables: [ 'None', 'State', 'Dearlership', 'Model', 'Persona', 'Cohort' ])
    render '/dashboards/show', locals: { metric: metric }
  end
end