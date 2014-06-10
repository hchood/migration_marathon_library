class Categorization < ActiveRecord::Base
  validates :category, presence: true

  validates :book,
    presence: true,
    uniqueness: { scope: :category }

  belongs_to :category
  belongs_to :book
end
