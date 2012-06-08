class Article < ActiveRecord::Base
  attr_accessible :author_id, :author, :content, :name, :published_at
  belongs_to :author
  has_many :comments

  include PgSearch
  pg_search_scope :search, against: [:name, :content],
    using: {tsearch: {dictionary: "english"}},
    associated_against: {author: :name, comments: [:name, :content]}, 
    ignoring: :accents  
  
  def self.text_search(query)
    if query.present?
      search(query)
    else
      scoped
    end
  end
end
