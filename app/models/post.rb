class Post < ApplicationRecord
    validates :content, presence: true, length: { maximum: 65_553}

    belongs_to :user
    belongs_to :event
end
