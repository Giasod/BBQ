class User < ApplicationRecord
  has_many :events, dependent: :destroy

  validates :name, presence: true,
                   length: { maximum: 35 }
  validates :email, presence: true

  before_validation :set_name, on: :create

  private

  def set_name
    self.name = "Товарисч №#{rand(777)}" if self.name.blank?
  end
end
