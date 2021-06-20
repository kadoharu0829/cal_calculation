class Food < ApplicationRecord
  enum kind: { breakfast: 1, lunch: 2, dinner: 3 }

  validates :name, presence: true, length: { maximum: 1000 }
  validates :calorie, presence: true, numericality: true
  validates :protein, presence: true, numericality: true
  validates :lipid, presence: true, numericality: true
  validates :carbohydrate, presence: true, numericality: true
  validates :salt_equivalent, presence: true, numericality: true
  validates :kind, inclusion: { in: Food.kinds.keys }
end
