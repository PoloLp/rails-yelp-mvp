class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true,
                       :inclusion => { :in => ['chinese',
                                               'italian',
                                               'japanese',
                                               'french',
                                               'belgian'] }

  before_validation :check_category_case_insensitive

  private

  def check_category_case_insensitive
    if ['chinese', 'italian', 'japanese', 'french',
        'belgian'].include?(category.downcase)
      self.category = category.downcase
    end
  end
end
