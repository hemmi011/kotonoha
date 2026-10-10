class Event < ApplicationRecord
    validates :title, presence: true, length: { maximum: 255 }
    validates :body, length: { maximum: 65_535 }

    has_may :posts, dependent: :destroy
    belongs_to :user
end
