class Stock < ApplicationRecord
  acts_as_paranoid

  belongs_to :bearer

  validates_presence_of :name
end
