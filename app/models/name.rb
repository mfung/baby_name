class Name < ApplicationRecord
  acts_as_copy_target

  validates :name, presence: true
end
