class Article < ActiveRecord::Base
  attr_accessible :author_id, :author, :content, :name, :published_at
  belongs_to :author
  has_many :comments

  def self.text_search(query)
    if query.present?
      where("name @@ :q or content @@ :q", q: query)
    else
      scoped
    end
  end
end
