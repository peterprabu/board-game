class Player < ApplicationRecord
  has_many :owned_squares, class_name: 'Square', foreign_key: 'owner_id'
  belongs_to :current_square, class_name: 'Square', foreign_key: 'current_square_id'
end
