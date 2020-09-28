class Name < ApplicationRecord
  acts_as_copy_target

  scope :female, -> { where(gender: 'F') }
  scope :male, -> { where(gender: 'M') }

  validates :name, presence: true
end
