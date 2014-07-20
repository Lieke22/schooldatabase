class Contactpersoon < ActiveRecord::Base
  validates :name, presence: true
end
