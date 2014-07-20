class School < ActiveRecord::Base
  validates :name, :address, :postcode, :town, :telephone, presence: true


  # def website=(website)
  #   write_attribute(:website, name.capitalize)
  # end
  #
  # def website
  #   read_attribute(:website)capitalize  # No test for nil?
  # end
end
