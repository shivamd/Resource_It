class Snippet < ActiveRecord::Base
  attr_accessible :content, :user_id

  validates :content, :user_id, presence: true
  belongs_to :user
  has_and_belongs_to_many :tags


  def create_tags(tags)
    tags = Tag.sanitize_tags(tags)
    tags.each do |tag|
      self.tags << Tag.find_or_create_by_content(tag)
    end
  end


  default_scope order('created_at DESC')
end
