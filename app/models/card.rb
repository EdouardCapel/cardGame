class Card < ApplicationRecord
  belongs_to :value
  belongs_to :color
end
