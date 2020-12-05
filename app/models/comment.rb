class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :content , presence: true

  # scope : , -> { where(deleted_at: nil) }
  default_scope { where(deleted_at: nil).order(id: :desc) }

  def destroy
    update(deleted_at: Time.now)
  end
  
end
