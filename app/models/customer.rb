# frozen_string_literal: true

class Customer < ApplicationRecord
  belongs_to :user
  has_many :products, dependent: :destroy
end
