class Content

  def self.find(id)
    content = list.select { |c| c.id == id.to_i }
    content[0]
  end

  def self.list
    [
      article_one, event_one, user_one
    ]
  end

  def self.article_one
    OpenStruct.new(
      id: 1,
      name: 'Audi Cookie Recipe',
      type: 'Article',
      url: '/cms/1/audi-cookie-recipe',
      meta: {
        publish_date: '18/12/2014',
        due_date: '4 hours',
        todo: 'Review'
      })
  end

  def self.event_one
    OpenStruct.new(
      id: 2,
      name: 'Sydney Film Festival',
      type: 'Event',
      url: '/cms/2/sydney-film-festival',
      meta: {
        publish_date: '20/11/2014',
        due_date: '45 hours',
        todo: 'Approve'
      })
  end

  def self.user_one
    OpenStruct.new(
      id: 3,
      name: 'Samuel Teh',
      type: 'User',
      url: '/cms/3/samual-teh',
      meta: {
        created_by: 'Josh Wood',
        todo: 'Approve'
      })
  end
end