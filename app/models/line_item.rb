class LineItem < ActiveRecord::Base
  belongs_to :photograph
  belongs_to :cart
  belongs_to :user
end
