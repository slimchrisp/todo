class List < ActiveRecord::Base

  validates :title, length: {maximum: 255}, allow_blank: false

  has_many :items

end