class Item < ActiveRecord::Base

  validates :title, length: {maximum: 255}, allow_blank: false

  belongs_to :list

end