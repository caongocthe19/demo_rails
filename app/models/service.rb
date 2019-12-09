# frozen_string_literal: true

class Service < ApplicationRecord
  belongs_to :product
  belongs_to :bill

  validates :name, :unit_price, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
