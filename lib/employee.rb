class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store_id, presence: true

  # before_save can be used but it will create a new password everytime it is updated
  before_create :create_password

  private

  def create_password
    self.password = [*('a'..'z'),*('0'..'9')].shuffle[0,8].join
  end
end
