class Article < ActiveRecord::Base
  attr_accessible :author_id, :author, :content, :name, :published_at
  belongs_to :author
  has_many :comments

  def self.text_search(query)
    if query.present?
      rank = <<-RANK
        ts_rank(to_tsvector(name), plainto_tsquery(#{sanitize(query)})) +
        ts_rank(to_tsvector(content), plainto_tsquery(#{sanitize(query)}))
      RANK
      where("name @@ :q or content @@ :q", q: query).order("#{rank} desc")
    else
      scoped
    end
  end
end
