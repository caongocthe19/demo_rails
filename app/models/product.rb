# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :customer
  belongs_to :service
end
