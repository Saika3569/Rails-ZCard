class Board < ApplicationRecord
  validates :title, presence: true, length: { minimum: 4 }

  has_many :posts
  belongs_to :user, optional: true
  
  acts_as_paranoid
  include AASM

  aasm column: 'state', no_direct_assignment: true do
    state :open, initial: true
    state :hidden, :locked

    event :hide do
      transitions from: :open, to: :hidden
      after do
        "我是測試"
      end
    end

    event :lock do
      transitions from: :open, to: :locked
    end

    event :open do
      transitions from: [:hidden, :locked ], to: :open
    end
  end

end
