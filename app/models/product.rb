# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :customer
  has_many :services, dependent: :destroy
end
