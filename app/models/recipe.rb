class Recipe < ActiveRecord::Base

  scope :skin_conditions, -> { where(category:"skin_conditions")}
  scope :health_conditions, ->{ where(category:"health_conditions")}
  scope :anti_aging, -> { where(category:"anti_aging")}

  validates :name, presence: true
end