class Service < ApplicationRecord
  belongs_to :product
  belongs_to :bill
end
