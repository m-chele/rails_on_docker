class User < ApplicationRecord
  validates :email, presence: true

  has_many :todo_items, dependent: :destroy

end
