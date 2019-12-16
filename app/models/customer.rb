# frozen_string_literal: true

class Customer < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy

  validates :name, :address, :phone, presence: true

  scope :newest, -> { order created_at: :DESC}
end
