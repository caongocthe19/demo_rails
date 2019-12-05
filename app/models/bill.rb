# frozen_string_literal: true

class Bill < ApplicationRecord
  has_one :service
end
