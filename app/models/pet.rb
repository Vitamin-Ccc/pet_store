class Pet < ApplicationRecord
  has_many :breeds, dependent: :destroy
end
