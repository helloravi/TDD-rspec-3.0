class NewsRelease < ActiveRecord::Base

  validates :released_on, :body, :title, presence: true

  def title_with_date
    "#{released_on.strftime('%Y-%m-%d')}: #{title}"
  end
end
