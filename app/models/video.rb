class Video < ActiveRecord::Base
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  serialize :tags
  has_many :snippets
end


=begin
Video.create()

=end
