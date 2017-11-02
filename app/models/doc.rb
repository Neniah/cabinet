class Doc < ApplicationRecord
  belongs_to :user

  #validations
  validates :title, presence: true
end
