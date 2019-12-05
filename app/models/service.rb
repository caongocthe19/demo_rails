# frozen_string_literal: true

class Service < ApplicationRecord
  belongs_to :product
  belongs_to :bill
end
