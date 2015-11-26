class Compliment < ActiveRecord::Base
  validates :driver, presence: true
  validates :date, presence: true
  validates :call_number, presence: true, uniqueness: true
end
