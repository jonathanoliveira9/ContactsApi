class Contact < ApplicationRecord
  belongs_to :user
  has_many :addresses, dependent: :destroy
  validates :name, :user, presence: true
  accepts_nested_attributes_for :addresses, allow_destroy: true

  def as_json(options={})
    super(root: true, include: { addresses: { only: %i(id city street state state_full zip_code) } })
  end
end
