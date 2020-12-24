class Contact < ApplicationRecord
  belongs_to :user
  has_many :addresses, dependent: :destroy
  validates :name, :user, presence: true
end
