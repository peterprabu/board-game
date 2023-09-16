class Square < ApplicationRecord
  belongs_to :owner, class_name: 'Player', foreign_key: 'owner_id'
end
