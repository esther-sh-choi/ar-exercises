class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3}
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_men_or_women_apparel

  before_destroy :has_employee?

  def must_carry_men_or_women_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "must carry at least one of the men's or women's apparel")
      errors.add(:womens_apparel, "must carry at least one of the men's or women's apparel")
    end
  end

  def has_employee?
    throw :abort if employees.any? 
  end
end


=begin
Store name: cat
Annual revenue can't be blank
Annual revenue is not a number
Mens apparel must carry at least one of the men's or women's apparel
Womens apparel must carry at least one of the men's or women's apparel
=end