class Photograph < ActiveRecord::Base
  belongs_to :album
  belongs_to :user
  has_many :line_items
  validates_formatting_of :asset_url, using: :url
end
