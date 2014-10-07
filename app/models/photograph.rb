class Photograph < ActiveRecord::Base
  belongs_to :album
  belongs_to :user
  has_many :line_items
end
