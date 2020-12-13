class Stock < ApplicationRecord
  belongs_to :bearer

  validates_presence_of :name
end
