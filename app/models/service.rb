# frozen_string_literal: true

class Service < ApplicationRecord
  # has_many :products, dependent: :destroy
  has_one :bill

  validates :name, :unit_price, presence: true
  validates :name, uniqueness: { case_sensitive: false }

  scope :newest, -> { order created_at: :DESC }
end
