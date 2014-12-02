class Metric
  attr_accessor :name, :variables

  def initialize
    @variables = []
  end

  def self.all
    [sales, leads, prospects, engagement]
  end

  def self.sales
    metric = new
    metric.name = 'Sales'
    metric.variables = [ 'None', 'State', 'Dealership', 'Model', 'Persona', 'Cohort' ]
    metric
  end

  def self.leads
    metric = new
    metric.name = 'Leads'
    metric.variables = [ 'None', 'Channel', 'Model', 'Persona', 'Cohort' ]
    metric
  end

  def self.prospects
    metric = new
    metric.name = 'Prospects'
    metric.variables = [ 'None', 'Channel', 'Model', 'Persona', 'Cohort' ]
    metric
  end

  def self.engagement
    metric = new
    metric.name = 'Engagement'
    metric.variables = [ 'None', 'Channel', 'Model', 'Persona', 'Cohort' ]
    metric
  end

  def self.find(name)
    metrics = all
    metrics.each do |metric|
      return metric if metric.name.downcase == name
    end
    false
  end
end