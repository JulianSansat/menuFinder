class Establishment < ApplicationRecord
   validates :name, :adress, :telephone, presence: true
   validates :name, uniqueness: true
   validates :delivery, inclusion: { in: [ true, false ] }
end
