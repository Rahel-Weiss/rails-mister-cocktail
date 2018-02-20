class Ingredient < ApplicationRecord
  before_destroy :check_children

  validates :name, presence: true, uniqueness: true

  has_many :doses, dependent: :destroy
  has_many :cocktails, through: :doses

  private

  def check_children
   if self.doses.any?
      raise ActiveRecord::InvalidForeignKey
    else
      self.destroy
    end
  end

end
