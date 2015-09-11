class Article < ActiveRecord::Base
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings

  def tag_list
    tags.collect do |tag|
      tag.name
    end.join(", ")
  end

  def tag_list=(tags_string)
    tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
    found_or_new_tags = tag_names.collect{|name| Tag.find_or_create_by(name: name)}
    self.tags = found_or_new_tags
  end
end
