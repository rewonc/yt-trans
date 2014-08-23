class Snippet < ActiveRecord::Base
  belongs_to :video
  has_many :comments
end
