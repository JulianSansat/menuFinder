class Product < ApplicationRecord
  validates :name, :kind, :description, :price, :image, presence: true
  validates_associated :establishment
  belongs_to :establishment
end