class Word < ApplicationRecord
  validates :text,
            presence: true,
            uniqueness: true,
            format: { with: /\A[[:word:]]+\z/ }
end
