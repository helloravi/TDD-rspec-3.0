require 'rails_helper'

RSpec.describe NewsRelease, :type => :model, focus: true do
  it "returns a title with the date" do
    news_release = NewsRelease.new(title: "Ravikanth is blissed out", released_on: '2013-07-31')
    expect(news_release.title_with_date).to eq "2013-07-31: Ravikanth is blissed out"
  end

  it { should validate_presence_of :released_on}
  it { should validate_presence_of :body }
  it { should validate_presence_of :title }
end
