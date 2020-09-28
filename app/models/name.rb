class Name < ApplicationRecord
  acts_as_copy_target

  scope :female, -> { where(gender: 'F') }
  scope :male, -> { where(gender: 'M') }
  scope :latest, -> { where(year: distinct.select(:year).order(year: :desc).limit(1).first.year) }

  validates :name, presence: true
end
