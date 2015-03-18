class Product < ActiveRecord::Base
  validates :price, presence: true, numericality: {greater_than: 0}
  validates :name, presence: true, length: {maximum: 200}
  validates :weight, numericality: {only_integer: true, greater_than: 0}, allow_blank: true
end
