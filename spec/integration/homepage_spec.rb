require File.expand_path(File.dirname(__FILE__) + "/spec_helper")

describe 'test', type: :feature do
  it 'shows test' do
    visit '/'
    expect(page).to have_content 'test'
  end
end