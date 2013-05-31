class Tag < ActiveRecord::Base
  attr_accessible :content

  validates :content, presence: true, uniqueness: { case_sensitive: false }
  has_and_belongs_to_many :snippets

  def self.sanitize_tags(tags)
    tags.split(' ').map do |tag|
      tag.downcase
    end
  end

  default_scope joins: :snippets, group: "tags.id", order: "snippets.count desc"
end
